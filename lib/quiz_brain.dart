import 'package:quizz_app/answer_tag.widget.dart';
import 'package:quizz_app/question.dart';

class QuizzBrain {
  int _questionNumber = 0;
  bool _finished = false;
  List<AnswerTag> answersTag = [];
  final List<Question> _questions = [
    Question('Naruto é considerado um Uchiha pois controla o poder da Kurama?', false),
    Question('Sasuke aniquilou seu clã para testar seus poderes?', false),
    Question('Sakura foi treinada pela hokage Tsunade?', true),
    Question('Sasuke deixou a vila para se tornar mais forte?', true),
    Question('Naruto já desistiu em algum momento trazer Sasuke de volta?', false),
    Question('Kakashi já enfretou Itachi?', true),
    Question('Shikamaru conseguiu vingar a morte de seu sensei?', true),
    Question('Neji já foi derrotado por Naruto?', true),
  ];

  void nextQuestion(bool answer) {
    if (isFinished()) return;
    if (_questionNumber == _questions.length - 1) {
      _finished = true;
      answersTag.add(AnswerTag(answer: answer));
      return;
    }
    _questionNumber++;
    answersTag.add(AnswerTag(answer: answer));
  }

  String getQuestionText() {
    return _questions[_questionNumber].question;
  }

  bool getQuestionAnswer() {
    return _questions[_questionNumber].answer;
  }

  bool isFinished() {
    return _finished;
  }

  void reset() {
    _questionNumber = 0;
    _finished = false;
    answersTag = [];
  }
}
