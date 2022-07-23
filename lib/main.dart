import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = [
    {
      'question': 'What\'s your favorite sport game',
      'answers': [
        {'text': 'Football', 'score': 10},
        {'text': 'Swimming', 'score': 10},
        {'text': 'Hockey', 'score': 10},
        {'text': 'BasketBall', 'score': 10},
      ],
    },
    {
      'question': 'How many football club plays in EPL',
      'answers': [
        {'text': 'ten', 'score': 20},
        {'text': 'nineteen', 'score': 10},
        {'text': 'fifteen', 'score': 0},
        {'text': 'twenty', 'score': 50},
      ],
    },
    {
      'question': 'When was the league changed to Barclay Premier League',
      'answers': [
        {'text': '2000', 'score': 10},
        {'text': '1999', 'score': 20},
        {'text': '1990', 'score': 50},
        {'text': '1980', 'score': 25},
      ],
    },
    {
      'question': 'which English club has the most CL',
      'answers': [
        {'text': 'Man U', 'score': 10},
        {'text': 'Liverpool', 'score': 50},
        {'text': 'Chelsea', 'score': 30},
        {'text': 'Arsenal', 'score': 25},
      ],
    },
    {
      'question': 'How many CL do we have in EPL',
      'answers': [
        {'text': '2', 'score': 10},
        {'text': '5', 'score': 20},
        {'text': '4', 'score': 50},
        {'text': '3', 'score': 25},
      ],
    },
  ];

  int _questionIndex = 0;
  var _totalScore = 0;

  void resetQuiz() {
    setState(() {
      _questionIndex = 0;
    _totalScore = 0;
    });
  }

  void answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Sport quiz'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  answerQuestion: answerQuestion,
                  questionIndex: _questionIndex,
                )
              : Result(resultScore: _totalScore, resetHandler: resetQuiz,),
        ));
  }
}
