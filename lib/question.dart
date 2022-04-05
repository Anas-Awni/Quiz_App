// ignore_for_file: use_key_in_widget_constructors

import "package:flutter/material.dart";
import 'main.dart';

class Question extends StatelessWidget {
  final String questionText;

  // ignore: prefer_const_constructors_in_immutables
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10.0),
      child: Text(
        questionText,
        style: TextStyle(
            fontSize: 30,
            color: isSwitched == false ? Colors.black : Colors.white,
            fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
