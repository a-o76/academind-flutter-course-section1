import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function handleReset;

  Result(this.resultScore, this.handleReset);

  String get resultPhrase {
    var resultText = 'You did it';
    if (resultScore < 30) {
      resultText = 'Bad taste...';
    } else {
      resultText = 'Ok, good!';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 30, color: Colors.indigo),
            textAlign: TextAlign.center,
          ),
          RaisedButton(onPressed: handleReset, textColor: Colors.red, child: Text('Reset!'))
        ],
      ),
    );
  }
}
