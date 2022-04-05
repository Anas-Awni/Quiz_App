import "package:flutter/material.dart";
import 'main.dart';

class Result extends StatelessWidget {
  final Function() q;
  final int resultScore;
  Result(this.q, this.resultScore);

  String get resultPhrase {
    String resultText;
    if (resultScore >= 70) {
      resultText = "You are Awesome !";
    } else if (resultScore >= 40) {
      resultText = "Good Job";
    } else {
      resultText = "Study and try again";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // child to add single sth
        children: <Widget>[
          //children to add many things
          Text(
            "Your Score is $resultScore",
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: isSwitched == false ? Colors.black : Colors.white,
            ),
          ),
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: isSwitched == false ? Colors.black : Colors.white,
            ),
          ),
          TextButton(
            child: Text(
              "Restart The App",
              style: TextStyle(
                fontSize: 30,
                color: Colors.blue,
              ),
            ),
            onPressed: q,
          )
        ],
      ),
    );
  }
}
