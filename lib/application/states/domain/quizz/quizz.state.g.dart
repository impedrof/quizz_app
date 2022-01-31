// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quizz.state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Quizz on QuizzModel, Store {
  Computed<Questao>? _$questaoAtualComputed;

  @override
  Questao get questaoAtual =>
      (_$questaoAtualComputed ??= Computed<Questao>(() => super.questaoAtual,
              name: 'QuizzModel.questaoAtual'))
          .value;
  Computed<bool>? _$ultimaQuestaoComputed;

  @override
  bool get ultimaQuestao =>
      (_$ultimaQuestaoComputed ??= Computed<bool>(() => super.ultimaQuestao,
              name: 'QuizzModel.ultimaQuestao'))
          .value;

  final _$idAtom = Atom(name: 'QuizzModel.id');

  @override
  int? get id {
    _$idAtom.reportRead();
    return super.id;
  }

  @override
  set id(int? value) {
    _$idAtom.reportWrite(value, super.id, () {
      super.id = value;
    });
  }

  final _$_numeroQuestaoAtom = Atom(name: 'QuizzModel._numeroQuestao');

  @override
  int get _numeroQuestao {
    _$_numeroQuestaoAtom.reportRead();
    return super._numeroQuestao;
  }

  @override
  set _numeroQuestao(int value) {
    _$_numeroQuestaoAtom.reportWrite(value, super._numeroQuestao, () {
      super._numeroQuestao = value;
    });
  }

  final _$completoAtom = Atom(name: 'QuizzModel.completo');

  @override
  bool get completo {
    _$completoAtom.reportRead();
    return super.completo;
  }

  @override
  set completo(bool value) {
    _$completoAtom.reportWrite(value, super.completo, () {
      super.completo = value;
    });
  }

  final _$respostasAtom = Atom(name: 'QuizzModel.respostas');

  @override
  List<RespostaQuizz>? get respostas {
    _$respostasAtom.reportRead();
    return super.respostas;
  }

  @override
  set respostas(List<RespostaQuizz>? value) {
    _$respostasAtom.reportWrite(value, super.respostas, () {
      super.respostas = value;
    });
  }

  final _$QuizzModelActionController = ActionController(name: 'QuizzModel');

  @override
  void proximaQuestao(bool resposta) {
    final _$actionInfo = _$QuizzModelActionController.startAction(
        name: 'QuizzModel.proximaQuestao');
    try {
      return super.proximaQuestao(resposta);
    } finally {
      _$QuizzModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void resetar() {
    final _$actionInfo =
        _$QuizzModelActionController.startAction(name: 'QuizzModel.resetar');
    try {
      return super.resetar();
    } finally {
      _$QuizzModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
id: ${id},
completo: ${completo},
respostas: ${respostas},
questaoAtual: ${questaoAtual},
ultimaQuestao: ${ultimaQuestao}
    ''';
  }
}
