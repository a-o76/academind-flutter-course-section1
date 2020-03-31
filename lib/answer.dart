import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function selectHandler;
  final String answer;

  Answer(this.selectHandler, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 10, right: 10),
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.deepPurple[300],
        child: Text(answer),
        onPressed: selectHandler,
      ),
    );
  }
}