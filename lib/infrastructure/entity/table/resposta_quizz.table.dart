import 'package:drift/drift.dart';
import 'package:quizz_app/infrastructure/dto/resposta_quizz/respota_quizz.dto.dart';

@UseRowClass(RespostaQuizzDto)
class RespostaQuizzTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get idQuizz => integer().nullable()();
  IntColumn get idQuestao => integer()();
  BoolColumn get resposta => boolean()();
}
