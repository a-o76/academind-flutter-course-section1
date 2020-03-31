import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function handleAnswer;

  Quiz(
      {@required this.questions,
      @required this.questionIndex,
      @required this.handleAnswer});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(
        questions[questionIndex]['questionText'],
      ),
      ...(questions[questionIndex]['answer'] as List<Map<String, Object>>).map((answer) {
        return Answer(() => handleAnswer(answer['score']), answer['text']);
      }).toList()
    ]);
  }
}
