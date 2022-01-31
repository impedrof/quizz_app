import 'package:mobx/mobx.dart';
import 'package:quizz_app/application/states/domain/list_questions/questao.dart';

part 'lista_questoes.state.g.dart';

class ListaQuestoes = ListaQuestoesModel with _$ListaQuestoes;

abstract class ListaQuestoesModel with Store {
  @observable
  bool carregando = false;

  @observable
  List<Questao> questoes = ObservableList();

  @action
  void setarLista(List<Questao> lista) => questoes = lista;

  @action
  void setarCarregando(bool carregando) => this.carregando = carregando;
}
