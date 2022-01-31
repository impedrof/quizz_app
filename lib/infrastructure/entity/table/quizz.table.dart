import 'package:drift/drift.dart';
import 'package:quizz_app/infrastructure/dto/quizz/quizz.dto.dart';

@UseRowClass(QuizzDto)
class QuizzTable extends Table {
  IntColumn get id => integer().autoIncrement()();
}
