import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;

  Question(this.question);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        question,
        style: TextStyle(
          color: Color.fromRGBO(0, 0, 0, 1),
          fontSize: 22,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
