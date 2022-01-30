import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:quizz_app/application/states/domain/list_questions/lista_questoes.state.dart';
import 'package:quizz_app/application/states/domain/quizz/resposta.dart';
import 'package:quizz_app/application/states/domain/list_questions/questao.dart';

part 'quizz.state.g.dart';

class Quizz = QuizzModel with _$Quizz;

abstract class QuizzModel with Store {
  final _listaQuestoes = GetIt.I.get<ListaQuestoes>();

  @observable
  int _numeroQuestao = 0;

  @observable
  bool completo = false;

  @observable
  List<Resposta> respostas = [];

  @computed
  Questao get questaoAtual => _listaQuestoes.questoes[_numeroQuestao];

  @action
  void proximaQuestao(bool resposta) {
    if (completo) return;
    if (_numeroQuestao == _listaQuestoes.questoes.length - 1) {
      completo = true;
      respostas.add(Resposta(questaoAtual.id, resposta));
      return;
    }
    respostas.add(Resposta(questaoAtual.id, resposta));
    _numeroQuestao++;
  }

  @action
  void resetar() {
    _numeroQuestao = 0;
    completo = false;
    respostas = [];
  }
}
