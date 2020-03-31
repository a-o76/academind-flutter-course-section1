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

  void _handleAnswer() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  var _questions = [
    {
      'questionText': 'Whats your favorite movie?',
      'answer': ['Matrix', 'Lord of the rings', 'Kill Bill', 'X-men'],
    },
    {
      'questionText': 'Whats your favorite game?',
      'answer': ['Pokemon', 'Zelda', 'Dark Souls', 'Castlevania'],
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
            : Result(),
      ),
    );
  }
}
