import 'package:drift/drift.dart';
import 'package:quizz_app/application/states/domain/quizz/resposta.dart';
import 'package:quizz_app/infrastructure/entity/quizz.database.dart';

class RespostaQuizzDto implements Insertable<RespostaQuizzDto> {
  int? id;
  int? idQuizz;
  int idQuestao;
  bool resposta;

  RespostaQuizzDto({this.id, this.idQuizz, required this.idQuestao, required this.resposta});

  factory RespostaQuizzDto.deDominio(RespostaQuizz respostaQuizz) {
    return RespostaQuizzDto(
      id: respostaQuizz.id,
      idQuizz: respostaQuizz.idQuizz,
      idQuestao: respostaQuizz.idQuestao,
      resposta: respostaQuizz.resposta,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return RespostaQuizzTableCompanion(
      idQuestao: Value(idQuestao),
      resposta: Value(resposta),
      idQuizz: Value(idQuizz!),
    ).toColumns(nullToAbsent);
  }
}
