// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lista_questoes.state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ListaQuestoes on ListaQuestoesModel, Store {
  final _$carregandoAtom = Atom(name: 'ListaQuestoesModel.carregando');

  @override
  bool get carregando {
    _$carregandoAtom.reportRead();
    return super.carregando;
  }

  @override
  set carregando(bool value) {
    _$carregandoAtom.reportWrite(value, super.carregando, () {
      super.carregando = value;
    });
  }

  final _$questoesAtom = Atom(name: 'ListaQuestoesModel.questoes');

  @override
  List<Questao> get questoes {
    _$questoesAtom.reportRead();
    return super.questoes;
  }

  @override
  set questoes(List<Questao> value) {
    _$questoesAtom.reportWrite(value, super.questoes, () {
      super.questoes = value;
    });
  }

  final _$ListaQuestoesModelActionController =
      ActionController(name: 'ListaQuestoesModel');

  @override
  void setarLista(List<Questao> lista) {
    final _$actionInfo = _$ListaQuestoesModelActionController.startAction(
        name: 'ListaQuestoesModel.setarLista');
    try {
      return super.setarLista(lista);
    } finally {
      _$ListaQuestoesModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setarCarregando(bool carregando) {
    final _$actionInfo = _$ListaQuestoesModelActionController.startAction(
        name: 'ListaQuestoesModel.setarCarregando');
    try {
      return super.setarCarregando(carregando);
    } finally {
      _$ListaQuestoesModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
carregando: ${carregando},
questoes: ${questoes}
    ''';
  }
}
