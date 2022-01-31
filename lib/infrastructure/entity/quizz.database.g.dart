// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quizz.database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class QuizzTableCompanion extends UpdateCompanion<QuizzDto> {
  final Value<int> id;
  const QuizzTableCompanion({
    this.id = const Value.absent(),
  });
  QuizzTableCompanion.insert({
    this.id = const Value.absent(),
  });
  static Insertable<QuizzDto> custom({
    Expression<int>? id,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
    });
  }

  QuizzTableCompanion copyWith({Value<int>? id}) {
    return QuizzTableCompanion(
      id: id ?? this.id,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('QuizzTableCompanion(')
          ..write('id: $id')
          ..write(')'))
        .toString();
  }
}

class $QuizzTableTable extends QuizzTable
    with TableInfo<$QuizzTableTable, QuizzDto> {
  final GeneratedDatabase _db;
  final String? _alias;
  $QuizzTableTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  @override
  List<GeneratedColumn> get $columns => [id];
  @override
  String get aliasedName => _alias ?? 'quizz_table';
  @override
  String get actualTableName => 'quizz_table';
  @override
  VerificationContext validateIntegrity(Insertable<QuizzDto> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  QuizzDto map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return QuizzDto(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
    );
  }

  @override
  $QuizzTableTable createAlias(String alias) {
    return $QuizzTableTable(_db, alias);
  }
}

class RespostaQuizzTableCompanion extends UpdateCompanion<RespostaQuizzDto> {
  final Value<int> id;
  final Value<int?> idQuizz;
  final Value<int> idQuestao;
  final Value<bool> resposta;
  const RespostaQuizzTableCompanion({
    this.id = const Value.absent(),
    this.idQuizz = const Value.absent(),
    this.idQuestao = const Value.absent(),
    this.resposta = const Value.absent(),
  });
  RespostaQuizzTableCompanion.insert({
    this.id = const Value.absent(),
    this.idQuizz = const Value.absent(),
    required int idQuestao,
    required bool resposta,
  })  : idQuestao = Value(idQuestao),
        resposta = Value(resposta);
  static Insertable<RespostaQuizzDto> custom({
    Expression<int>? id,
    Expression<int?>? idQuizz,
    Expression<int>? idQuestao,
    Expression<bool>? resposta,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (idQuizz != null) 'id_quizz': idQuizz,
      if (idQuestao != null) 'id_questao': idQuestao,
      if (resposta != null) 'resposta': resposta,
    });
  }

  RespostaQuizzTableCompanion copyWith(
      {Value<int>? id,
      Value<int?>? idQuizz,
      Value<int>? idQuestao,
      Value<bool>? resposta}) {
    return RespostaQuizzTableCompanion(
      id: id ?? this.id,
      idQuizz: idQuizz ?? this.idQuizz,
      idQuestao: idQuestao ?? this.idQuestao,
      resposta: resposta ?? this.resposta,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (idQuizz.present) {
      map['id_quizz'] = Variable<int?>(idQuizz.value);
    }
    if (idQuestao.present) {
      map['id_questao'] = Variable<int>(idQuestao.value);
    }
    if (resposta.present) {
      map['resposta'] = Variable<bool>(resposta.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RespostaQuizzTableCompanion(')
          ..write('id: $id, ')
          ..write('idQuizz: $idQuizz, ')
          ..write('idQuestao: $idQuestao, ')
          ..write('resposta: $resposta')
          ..write(')'))
        .toString();
  }
}

class $RespostaQuizzTableTable extends RespostaQuizzTable
    with TableInfo<$RespostaQuizzTableTable, RespostaQuizzDto> {
  final GeneratedDatabase _db;
  final String? _alias;
  $RespostaQuizzTableTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _idQuizzMeta = const VerificationMeta('idQuizz');
  @override
  late final GeneratedColumn<int?> idQuizz = GeneratedColumn<int?>(
      'id_quizz', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _idQuestaoMeta = const VerificationMeta('idQuestao');
  @override
  late final GeneratedColumn<int?> idQuestao = GeneratedColumn<int?>(
      'id_questao', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _respostaMeta = const VerificationMeta('resposta');
  @override
  late final GeneratedColumn<bool?> resposta = GeneratedColumn<bool?>(
      'resposta', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK (resposta IN (0, 1))');
  @override
  List<GeneratedColumn> get $columns => [id, idQuizz, idQuestao, resposta];
  @override
  String get aliasedName => _alias ?? 'resposta_quizz_table';
  @override
  String get actualTableName => 'resposta_quizz_table';
  @override
  VerificationContext validateIntegrity(Insertable<RespostaQuizzDto> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('id_quizz')) {
      context.handle(_idQuizzMeta,
          idQuizz.isAcceptableOrUnknown(data['id_quizz']!, _idQuizzMeta));
    }
    if (data.containsKey('id_questao')) {
      context.handle(_idQuestaoMeta,
          idQuestao.isAcceptableOrUnknown(data['id_questao']!, _idQuestaoMeta));
    } else if (isInserting) {
      context.missing(_idQuestaoMeta);
    }
    if (data.containsKey('resposta')) {
      context.handle(_respostaMeta,
          resposta.isAcceptableOrUnknown(data['resposta']!, _respostaMeta));
    } else if (isInserting) {
      context.missing(_respostaMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RespostaQuizzDto map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RespostaQuizzDto(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      idQuizz: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id_quizz']),
      idQuestao: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id_questao'])!,
      resposta: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}resposta'])!,
    );
  }

  @override
  $RespostaQuizzTableTable createAlias(String alias) {
    return $RespostaQuizzTableTable(_db, alias);
  }
}

class QuestaoTableCompanion extends UpdateCompanion<QuestaoDto> {
  final Value<int> id;
  final Value<String> enunciado;
  final Value<bool> resposta;
  const QuestaoTableCompanion({
    this.id = const Value.absent(),
    this.enunciado = const Value.absent(),
    this.resposta = const Value.absent(),
  });
  QuestaoTableCompanion.insert({
    this.id = const Value.absent(),
    required String enunciado,
    required bool resposta,
  })  : enunciado = Value(enunciado),
        resposta = Value(resposta);
  static Insertable<QuestaoDto> custom({
    Expression<int>? id,
    Expression<String>? enunciado,
    Expression<bool>? resposta,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (enunciado != null) 'enunciado': enunciado,
      if (resposta != null) 'resposta': resposta,
    });
  }

  QuestaoTableCompanion copyWith(
      {Value<int>? id, Value<String>? enunciado, Value<bool>? resposta}) {
    return QuestaoTableCompanion(
      id: id ?? this.id,
      enunciado: enunciado ?? this.enunciado,
      resposta: resposta ?? this.resposta,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (enunciado.present) {
      map['enunciado'] = Variable<String>(enunciado.value);
    }
    if (resposta.present) {
      map['resposta'] = Variable<bool>(resposta.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('QuestaoTableCompanion(')
          ..write('id: $id, ')
          ..write('enunciado: $enunciado, ')
          ..write('resposta: $resposta')
          ..write(')'))
        .toString();
  }
}

class $QuestaoTableTable extends QuestaoTable
    with TableInfo<$QuestaoTableTable, QuestaoDto> {
  final GeneratedDatabase _db;
  final String? _alias;
  $QuestaoTableTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _enunciadoMeta = const VerificationMeta('enunciado');
  @override
  late final GeneratedColumn<String?> enunciado = GeneratedColumn<String?>(
      'enunciado', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _respostaMeta = const VerificationMeta('resposta');
  @override
  late final GeneratedColumn<bool?> resposta = GeneratedColumn<bool?>(
      'resposta', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK (resposta IN (0, 1))');
  @override
  List<GeneratedColumn> get $columns => [id, enunciado, resposta];
  @override
  String get aliasedName => _alias ?? 'questao_table';
  @override
  String get actualTableName => 'questao_table';
  @override
  VerificationContext validateIntegrity(Insertable<QuestaoDto> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('enunciado')) {
      context.handle(_enunciadoMeta,
          enunciado.isAcceptableOrUnknown(data['enunciado']!, _enunciadoMeta));
    } else if (isInserting) {
      context.missing(_enunciadoMeta);
    }
    if (data.containsKey('resposta')) {
      context.handle(_respostaMeta,
          resposta.isAcceptableOrUnknown(data['resposta']!, _respostaMeta));
    } else if (isInserting) {
      context.missing(_respostaMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  QuestaoDto map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return QuestaoDto(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      enunciado: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}enunciado'])!,
      resposta: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}resposta'])!,
    );
  }

  @override
  $QuestaoTableTable createAlias(String alias) {
    return $QuestaoTableTable(_db, alias);
  }
}

abstract class _$QuizzDatabase extends GeneratedDatabase {
  _$QuizzDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $QuizzTableTable quizzTable = $QuizzTableTable(this);
  late final $RespostaQuizzTableTable respostaQuizzTable =
      $RespostaQuizzTableTable(this);
  late final $QuestaoTableTable questaoTable = $QuestaoTableTable(this);
  late final QuizzDao quizzDao = QuizzDao(this as QuizzDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [quizzTable, respostaQuizzTable, questaoTable];
}
