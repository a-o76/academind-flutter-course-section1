import 'package:flutter/material.dart';

import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answer() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  var questions = [
    'Whats your favorite movie?',
    'Whats your favorite game?'
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
              Question(questions[_questionIndex]),
              RaisedButton(
                child: Text('Option 01'),
                onPressed: _answer,
              ),
              RaisedButton(
                child: Text('Option 02'),
                onPressed: _answer,
              ),
              RaisedButton(
                child: Text('Option 03'),
                onPressed: _answer,
              ),
            ])));
  }
}
