import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:quizz_app/application/modules/repos.module.dart';
import 'package:quizz_app/application/modules/use_cases.module.dart';
import 'package:quizz_app/application/states/domain/list_questions/lista_questoes.state.dart';
import 'package:quizz_app/application/use_case/quizz/quizz.use_case.dart';
import 'package:quizz_app/interfaces/quizz/quizz_app.widget.dart';
import 'package:quizz_app/interfaces/quizz/tag_resposta.widget.dart';
import 'package:quizz_app/application/modules/states.module.dart';
import 'package:quizz_app/application/states/domain/quizz/quizz.state.dart';

void main() async {
  StatesModule.carregarStates();
  ReposModule.carregarRepos();
  UseCasesModule.carregarUseCases();
  runApp(const QuizzApp());
}

class QuizzApp extends StatelessWidget {
  const QuizzApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quizz App',
      theme: ThemeData(
        fontFamily: 'Baloo2',
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(18.0),
            child: QuizzPage(),
          ),
        ),
      ),
    );
  }
}
