import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  const Result({Key? key, required this.resultScore, required this.resetHandler}) : super(key: key);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 10) {
      resultText = 'You did well';
    } else if (resultScore <= 20) {
      resultText = 'I am pleased with you';
    } else if (resultScore <= 30) {
      resultText = 'Unto the next one';
    } else {
      resultText = 'Work on yourself';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: [
            Text(
      resultPhrase,
      style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    ),
      TextButton(child: Text('Restart Quiz'), onPressed: resetHandler,),
          ],
        ));
  }
}
