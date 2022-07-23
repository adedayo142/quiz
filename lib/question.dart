import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  const Question({Key? key, required this.questionText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: Text(questionText,
      style: TextStyle(
        fontSize: 28, fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
        ),
    );
  }
}
