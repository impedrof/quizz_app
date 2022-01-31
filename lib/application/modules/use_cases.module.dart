import 'package:get_it/get_it.dart';
import 'package:quizz_app/application/use_case/quizz/quizz.use_case.dart';

abstract class UseCasesModule {
  static void carregarUseCases() {
    GetIt.I.registerSingleton<QuizzUseCase>(QuizzUseCase());
  }
}
