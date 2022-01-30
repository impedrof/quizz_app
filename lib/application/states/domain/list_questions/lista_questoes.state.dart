import 'package:mobx/mobx.dart';
import 'package:quizz_app/application/states/domain/list_questions/questao.dart';

part 'lista_questoes.state.g.dart';

class ListaQuestoes = ListaQuestoesModel with _$ListaQuestoes;

abstract class ListaQuestoesModel with Store {
  @observable
  List<Questao> questoes = [
    Questao(0, 'Naruto é considerado um Uchiha pois controla o poder da Kurama?', false),
    Questao(1, 'Sasuke aniquilou seu clã para testar seus poderes?', false),
    Questao(2, 'Sakura foi treinada pela hokage Tsunade?', true),
    Questao(3, 'Sasuke deixou a vila para se tornar mais forte?', true),
    Questao(4, 'Naruto já desistiu em algum momento trazer Sasuke de volta?', false),
    Questao(5, 'Kakashi já enfretou Itachi?', true),
    Questao(6, 'Shikamaru conseguiu vingar a morte de seu sensei?', true),
    Questao(7, 'Neji já foi derrotado por Naruto?', true),
  ];
}
