import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TagResposta extends StatelessWidget {
  TagResposta({Key? key, required this.resposta}) : super(key: key);

  bool resposta;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: resposta ? Colors.greenAccent.shade400 : Colors.redAccent),
      ),
      child: Icon(
        resposta ? Icons.check : Icons.close,
        size: 20,
        color: resposta ? Colors.greenAccent.shade400 : Colors.redAccent,
      ),
    );
  }
}
