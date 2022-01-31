import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:quizz_app/application/states/domain/list_questions/lista_questoes.state.dart';
import 'package:quizz_app/application/states/domain/quizz/quizz.state.dart';
import 'package:quizz_app/application/use_case/quizz/quizz.use_case.dart';
import 'package:quizz_app/interfaces/quizz/tag_resposta.widget.dart';

class QuizzPage extends StatefulWidget {
  const QuizzPage({Key? key}) : super(key: key);

  @override
  _QuizzPageState createState() => _QuizzPageState();
}

class _QuizzPageState extends State<QuizzPage> {
  final _quizz = GetIt.I.get<Quizz>();
  final _quizzUseCase = GetIt.I.get<QuizzUseCase>();
  final _questoes = GetIt.I.get<ListaQuestoes>();

  bool _validarQuestao(int i) {
    return _questoes.questoes.firstWhere((element) => element.id == _quizz.respostas![i].idQuestao).resposta ==
        _quizz.respostas![i].resposta;
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) async {
      await _quizzUseCase.buscarQuestoes();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return _questoes.questoes.isNotEmpty
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 10,
                    child: Center(
                      child: Text(
                        !_quizz.completo ? _quizz.questaoAtual.enunciado : 'É isso ai! Acertou quantas?',
                        style: const TextStyle(fontSize: 22),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  !_quizz.completo
                      ? Expanded(
                          flex: 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all(Colors.greenAccent.shade400)),
                                  onPressed: () {
                                    _quizz.proximaQuestao(true);
                                    if (_quizz.ultimaQuestao && _quizz.completo) {
                                      _quizzUseCase.salvarQuizz();
                                    }
                                  },
                                  child: const Text(
                                    'Verdadeiro',
                                    style: TextStyle(fontSize: 17),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 15),
                              Expanded(
                                child: ElevatedButton(
                                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.redAccent)),
                                  onPressed: () {
                                    _quizz.proximaQuestao(false);
                                    if (_quizz.ultimaQuestao && _quizz.completo) {
                                      _quizzUseCase.salvarQuizz();
                                    }
                                  },
                                  child: const Text(
                                    'Falso',
                                    style: TextStyle(fontSize: 17),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      : Expanded(
                          child: ElevatedButton(
                            onPressed: () => _quizz.resetar(),
                            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blueAccent)),
                            child: const Text('Resetar'),
                          ),
                        ),
                  const Divider(
                    height: 30,
                    thickness: 1,
                    endIndent: 20,
                    indent: 20,
                  ),
                  if (_quizz.respostas != null)
                    Container(
                      constraints: const BoxConstraints(minHeight: 30),
                      child: Wrap(
                        spacing: 7,
                        runSpacing: 7,
                        runAlignment: WrapAlignment.center,
                        alignment: WrapAlignment.center,
                        children: [
                          for (int i = 0; i < _quizz.respostas!.length; i++)
                            TagResposta(
                              resposta: _validarQuestao(i),
                            )
                        ],
                      ),
                    ),
                ],
              )
            : const Center(child: CircularProgressIndicator());
      },
    );
  }
}
