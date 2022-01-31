import 'package:get_it/get_it.dart';
import 'package:quizz_app/application/repo/quizz.repo.dart';
import 'package:quizz_app/application/states/domain/list_questions/lista_questoes.state.dart';
import 'package:quizz_app/application/states/domain/list_questions/questao.dart';
import 'package:quizz_app/application/states/domain/quizz/quizz.state.dart';

class QuizzUseCase {
  final _quizz = GetIt.I.get<Quizz>();
  final _repo = GetIt.I.get<QuizzRepo>();
  final _lista = GetIt.I.get<ListaQuestoes>();

  Future<void> salvarQuizz() async {
    await _repo.salvarQuizz(Quizz(null, _quizz.respostas));
  }

  Future<void> inserirQuestoes() async {
    await _repo.inserirQuestoes();
  }

  Future<void> buscarQuestoes() async {
    List<Questao> lista = await _repo.buscarQuestoes();
    _lista.setarLista(lista);
  }
}
