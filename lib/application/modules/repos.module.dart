import 'package:get_it/get_it.dart';
import 'package:quizz_app/application/repo/quizz.repo.dart';
import 'package:quizz_app/infrastructure/entity/quizz.database.dart';
import 'package:quizz_app/infrastructure/repo/quizz_database.repo.dart';

abstract class ReposModule {
  static void carregarRepos() {
    _carregarDatabase();
    GetIt.I.registerSingleton<QuizzRepo>(QuizzDatabaseRepo());
  }

  static void _carregarDatabase() {
    GetIt.I.registerSingleton<QuizzDatabase>(QuizzDatabase());
  }
}
