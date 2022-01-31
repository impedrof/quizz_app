import 'package:drift/drift.dart';
import 'package:quizz_app/application/states/domain/list_questions/questao.dart';
import 'package:quizz_app/infrastructure/entity/quizz.database.dart';

class QuestaoDto implements Insertable<QuestaoDto> {
  int? id;
  String enunciado;
  bool resposta;

  QuestaoDto({this.id, required this.enunciado, required this.resposta});

  Questao paraDominio() {
    return Questao(enunciado, resposta, id);
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return QuestaoTableCompanion(
      enunciado: Value(enunciado),
      resposta: Value(resposta),
    ).toColumns(nullToAbsent);
  }
}
