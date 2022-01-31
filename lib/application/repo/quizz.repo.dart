import 'package:quizz_app/application/states/domain/list_questions/questao.dart';
import 'package:quizz_app/application/states/domain/quizz/quizz.state.dart';

abstract class QuizzRepo {
  Future<void> salvarQuizz(Quizz quizz);

  Future<List<Questao>> buscarQuestoes();

  Future<void> inserirQuestoes();
}
