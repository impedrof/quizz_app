import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:quizz_app/interfaces/tag_resposta.widget.dart';
import 'package:quizz_app/application/modules/states.module.dart';
import 'package:quizz_app/application/states/domain/quizz/quizz.state.dart';

void main() {
  StatesModule.carregarStates();
  runApp(const QuizzApp());
}

class QuizzApp extends StatelessWidget {
  const QuizzApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quizz App',
      theme: ThemeData(
        fontFamily: 'Baloo2',
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(18.0),
            child: QuizzPage(),
          ),
        ),
      ),
    );
  }
}

class QuizzPage extends StatefulWidget {
  const QuizzPage({Key? key}) : super(key: key);

  @override
  State<QuizzPage> createState() => _QuizzPageState();
}

class _QuizzPageState extends State<QuizzPage> {
  final _quizz = GetIt.I.get<Quizz>();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return Column(
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
                            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.greenAccent.shade400)),
                            onPressed: () {
                              _quizz.proximaQuestao(_quizz.questaoAtual.resposta == true);
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
                              _quizz.proximaQuestao(_quizz.questaoAtual.resposta == false);
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
            Container(
              constraints: const BoxConstraints(minHeight: 30),
              child: Wrap(
                spacing: 7,
                runSpacing: 7,
                runAlignment: WrapAlignment.center,
                alignment: WrapAlignment.center,
                children: [
                  for (int i = 0; i < _quizz.respostas.length; i++) TagResposta(resposta: _quizz.respostas[i].resposta),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
