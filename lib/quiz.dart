import "package:flutter/material.dart";
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int questionIndex;
  final Function(int s) answerQuestion;

  Quiz(this.question, this.questionIndex, this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(question[questionIndex]['questionText']
            .toString()), // to string to change the value to text
        ...(question[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answerQuestion(int.parse(answer['score'].toString())),
              answer['text'].toString());
        }).toList(),
        //... to extract the list to the same level of widget
      ],
    );
  }
}
