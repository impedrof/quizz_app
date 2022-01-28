import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AnswerTag extends StatelessWidget {
  AnswerTag({Key? key, required this.answer}) : super(key: key);

  bool answer;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: answer ? Colors.greenAccent.shade400 : Colors.redAccent),
      ),
      child: Icon(
        answer ? Icons.check : Icons.close,
        size: 20,
        color: answer ? Colors.greenAccent.shade400 : Colors.redAccent,
      ),
    );
  }
}
