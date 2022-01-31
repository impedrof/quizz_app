import 'package:get_it/get_it.dart';
import 'package:quizz_app/application/repo/quizz.repo.dart';
import 'package:quizz_app/application/states/domain/list_questions/questao.dart';
import 'package:quizz_app/application/states/domain/quizz/quizz.state.dart';
import 'package:quizz_app/infrastructure/dto/questao/questao.dto.dart';
import 'package:quizz_app/infrastructure/dto/quizz/quizz.dto.dart';
import 'package:quizz_app/infrastructure/entity/quizz.database.dart';

class QuizzDatabaseRepo implements QuizzRepo {
  final _database = GetIt.I.get<QuizzDatabase>();

  @override
  Future<List<Questao>> buscarQuestoes() async {
    List<QuestaoDto> dto = await _database.quizzDao.buscarQuestoes();
    return dto.map((e) => e.paraDominio()).toList();
  }

  @override
  Future<void> inserirQuestoes() {
    return _database.quizzDao.inserirQuestoes();
  }

  @override
  Future<void> salvarQuizz(Quizz quizz) {
    return _database.quizzDao.salvarQuizz(QuizzDto.deDominio(quizz));
  }
}
