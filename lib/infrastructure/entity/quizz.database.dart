import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:quizz_app/infrastructure/dto/questao/questao.dto.dart';
import 'package:quizz_app/infrastructure/dto/quizz/quizz.dto.dart';
import 'package:quizz_app/infrastructure/dto/resposta_quizz/respota_quizz.dto.dart';
import 'package:quizz_app/infrastructure/entity/dao/quizz_dao.dart';
import 'package:quizz_app/infrastructure/entity/table/questoes.table.dart';
import 'package:quizz_app/infrastructure/entity/table/quizz.table.dart';
import 'package:quizz_app/infrastructure/entity/table/resposta_quizz.table.dart';

part 'quizz.database.g.dart';

@DriftDatabase(
  tables: [QuizzTable, RespostaQuizzTable, QuestaoTable],
  daos: [QuizzDao],
)
class QuizzDatabase extends _$QuizzDatabase {
  QuizzDatabase() : super(_criarConexao());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _criarConexao() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'quizz_db.sqlite'));
    return NativeDatabase(file);
  });
}
