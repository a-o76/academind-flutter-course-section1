import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _finalScore = 0;

  void _handleAnswer(score) {
    setState(() {
      _questionIndex = _questionIndex + 1;
      _finalScore = _finalScore += score;
    });
  }

  void _handleReset() {
    setState(() {
       _questionIndex = 0;
      _finalScore = 0;
    });
  }

  var _questions = [
    {
      'questionText': 'Whats your favorite movie?',
      'answer': [
        {'text': 'Matrix', 'score': 20},
        {'text': 'Lord of the rings', 'score': 15},
        {'text': 'Kill Bill', 'score': 10},
        {'text': 'X-men', 'score': 1}
      ],
    },
    {
      'questionText': 'Whats your favorite game?',
      'answer': [
        {'text': 'Pokemon', 'score': 3},
        {'text': 'Zelda', 'score': 5},
        {'text': 'Dark Souls', 'score': 15},
        {'text': 'Castlevania', 'score': 30}
      ],
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
          backgroundColor: Color.fromRGBO(153, 102, 255, 1),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questionIndex: _questionIndex,
                handleAnswer: _handleAnswer,
                questions: _questions,
              )
            : Result(_finalScore, _handleReset),
      ),
    );
  }
}
