import 'package:drift/drift.dart';
import 'package:quizz_app/application/states/domain/quizz/quizz.state.dart';
import 'package:quizz_app/infrastructure/dto/resposta_quizz/respota_quizz.dto.dart';
import 'package:quizz_app/infrastructure/entity/quizz.database.dart';

class QuizzDto implements Insertable<QuizzDto> {
  int? id;
  List<RespostaQuizzDto>? respostas;

  QuizzDto({this.id, this.respostas});

  factory QuizzDto.deDominio(Quizz quizz) {
    return QuizzDto(
      id: quizz.id,
      respostas: quizz.respostas!.map((e) => RespostaQuizzDto.deDominio(e)).toList(),
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return QuizzTableCompanion().toColumns(nullToAbsent);
  }
}
