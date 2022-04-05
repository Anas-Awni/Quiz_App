import "package:flutter/material.dart";

class Answer extends StatelessWidget {
  final String answerText;
  final Function() x;

  Answer(this.x, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      width: double.infinity,
      child: Container(
        child: ElevatedButton(
          child: Text(answerText),
          onPressed: x,
        ),
      ),
    );
  }
}
