import 'package:drift/drift.dart';
import 'package:quizz_app/infrastructure/dto/questao/questao.dto.dart';

@UseRowClass(QuestaoDto)
class QuestaoTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get enunciado => text()();
  BoolColumn get resposta => boolean()();
}
