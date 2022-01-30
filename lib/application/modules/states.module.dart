import 'package:get_it/get_it.dart';
import 'package:quizz_app/application/states/domain/list_questions/lista_questoes.state.dart';
import 'package:quizz_app/application/states/domain/quizz/quizz.state.dart';

abstract class StatesModule {
  static void carregarStates() {
    GetIt.I.registerSingleton<ListaQuestoes>(ListaQuestoes());
    GetIt.I.registerSingleton<Quizz>(Quizz());
  }
}
