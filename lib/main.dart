import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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

  var questions = [
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
            body: Column(children: <Widget>[
              Question(questions[_questionIndex]['questionText']),
              ...(questions[_questionIndex]['answer'] as List<String>).map((answer) {
                return Answer(_handleAnswer, answer);
              }).toList()
            ])));
  }
}
