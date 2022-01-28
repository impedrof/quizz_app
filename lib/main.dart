import 'package:flutter/material.dart';
import 'package:quizz_app/quiz_brain.dart';

void main() => runApp(const QuizzApp());

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

class QuizzPage extends StatefulWidget {
  const QuizzPage({Key? key}) : super(key: key);

  @override
  State<QuizzPage> createState() => _QuizzPageState();
}

class _QuizzPageState extends State<QuizzPage> {
  QuizzBrain brain = QuizzBrain();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 10,
          child: Center(
            child: Text(
              !brain.isFinished() ? brain.getQuestionText() : 'É isso ai! Acertou quantas?',
              style: const TextStyle(fontSize: 22),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        !brain.isFinished()
            ? Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.greenAccent.shade400)),
                        onPressed: () {
                          setState(() => brain.nextQuestion(brain.getQuestionAnswer() == true));
                        },
                        child: const Text(
                          'Verdadeiro',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Expanded(
                      child: ElevatedButton(
                        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.redAccent)),
                        onPressed: () {
                          setState(() => brain.nextQuestion(brain.getQuestionAnswer() == false));
                        },
                        child: const Text(
                          'Falso',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            : Expanded(
                child: ElevatedButton(
                  onPressed: () => setState(() => brain.reset()),
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blueAccent)),
                  child: const Text('Resetar'),
                ),
              ),
        const Divider(
          height: 30,
          thickness: 1,
          endIndent: 20,
          indent: 20,
        ),
        Container(
          constraints: const BoxConstraints(minHeight: 30),
          child: Wrap(
            spacing: 7,
            runSpacing: 7,
            runAlignment: WrapAlignment.center,
            alignment: WrapAlignment.center,
            children: brain.answersTag,
          ),
        ),
      ],
    );
  }
}
