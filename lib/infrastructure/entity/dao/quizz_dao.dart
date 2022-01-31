import 'package:drift/drift.dart';
import 'package:quizz_app/infrastructure/dto/questao/questao.dto.dart';
import 'package:quizz_app/infrastructure/dto/quizz/quizz.dto.dart';
import 'package:quizz_app/infrastructure/dto/resposta_quizz/respota_quizz.dto.dart';
import 'package:quizz_app/infrastructure/entity/quizz.database.dart';
import 'package:quizz_app/infrastructure/entity/table/questoes.table.dart';
import 'package:quizz_app/infrastructure/entity/table/quizz.table.dart';
import 'package:quizz_app/infrastructure/entity/table/resposta_quizz.table.dart';

part 'quizz_dao.g.dart';

@DriftAccessor(tables: [QuizzTable, RespostaQuizzTable, QuestaoTable])
class QuizzDao extends DatabaseAccessor<QuizzDatabase> with _$QuizzDaoMixin {
  QuizzDao(QuizzDatabase attachedDatabase) : super(attachedDatabase);

  Future<void> salvarQuizz(QuizzDto quizz) async {
    int idQuizz = await into(quizzTable).insert(quizz);
    await _salvarRespostas(quizz.respostas!, idQuizz);
  }

  Future<void> _salvarRespostas(List<RespostaQuizzDto> respostas, int idQuizz) {
    respostas.forEach((resp) => resp.idQuizz = idQuizz);
    return batch((batch) => batch.insertAll(respostaQuizzTable, respostas));
  }

  Future<List<QuestaoDto>> buscarQuestoes() async {
    return await select(questaoTable).get();
  }

  Future<void> inserirQuestoes() async {
    await batch((batch) {
      batch.insertAll(questaoTable, [
        QuestaoDto(enunciado: 'Naruto é considerado um Uchiha pois controla o poder da Kurama?', resposta: false),
        QuestaoDto(enunciado: 'Sasuke aniquilou seu clã para testar seus poderes?', resposta: false),
        QuestaoDto(enunciado: 'Sakura foi treinada pela hokage Tsunade?', resposta: true),
        QuestaoDto(enunciado: 'Sasuke deixou a vila para se tornar mais forte?', resposta: true),
        QuestaoDto(enunciado: 'Naruto já desistiu em algum momento trazer Sasuke de volta?', resposta: false),
        QuestaoDto(enunciado: 'Kakashi já enfretou Itachi?', resposta: true),
        QuestaoDto(enunciado: 'Shikamaru conseguiu vingar a morte de seu sensei?', resposta: true),
        QuestaoDto(enunciado: 'Neji já foi derrotado por Naruto?', resposta: true),
      ]);
    });
  }
}
