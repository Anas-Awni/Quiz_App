//import material for bulid widget and you can import any file you need to access
// ignore_for_file: prefer_const_constructors, avoid_print, duplicate_ignore

import "package:flutter/material.dart";
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

// main for Run the app
main() => runApp(const MyApp());

// use statefull Widget if your app need to make any change
// use stateless Widget if your app not need to make change

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
// the class name = file name in another page
  @override
  _MyAppState createState() => _MyAppState();
}

// all keywords here to make sth depends on material
bool isSwitched = false;

class _MyAppState extends State<MyApp> {
  // ignore: prefer_final_fields, unused_field

  int _totalScore = 0;
  int _questionIndex = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void answerQuestion(int score) {
    // set state because you need to update index
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
    /*
    print("_questionIndex=$_questionIndex");
    print("num0=$num0");
    print("num0=$num1");
    print("num0=$num2");
    print("_totalScore=$_totalScore");
    */
  }

  final List<Map<String, Object>> _question = [
    {
      'questionText': 'Q1. Flutter is a ?',
      'answers': [
        {'text': 'Programming Language', 'score': 0},
        {'text': 'SDK', 'score': 10},
        {'text': 'Both', 'score': 0},
        {'text': 'None of the above', 'score': 0}
      ]
    },
    {
      'questionText':
          'Q2. A notable feature of the Dart platform is it doesnt support for hot reload ?',
      'answers': [
        {'text': 'False', 'score': 10},
        {'text': 'True', 'score': 0},
      ]
    },
    {
      'questionText':
          'Q3. Flutter is an __________ mobile application development framework created by Google?',
      'answers': [
        {'text': 'Open-source', 'score': 10},
        {'text': 'Shareware', 'score': 0},
        {'text': 'Both', 'score': 0},
        {'text': 'None of the above', 'score': 0},
      ]
    },
    {
      'questionText':
          'Q4. Flutter apps are written in the ____ language and make use of many of the languages more advanced features?',
      'answers': [
        {'text': 'C', 'score': 0},
        {'text': 'Dart', 'score': 10},
        {'text': 'C++', 'score': 0},
        {'text': 'Swift', 'score': 0},
      ]
    },
    {
      'questionText': 'Q5. What are the advantages of Flutter?',
      'answers': [
        {'text': 'Cross-platform Development', 'score': 0},
        {'text': 'Faster Development', 'score': 0},
        {'text': 'UI Focused', 'score': 0},
        {'text': 'All of the above', 'score': 10},
      ]
    },
    {
      'questionText': 'Q6. Flutter is developed by Facebook?',
      'answers': [
        {'text': 'True', 'score': 0},
        {'text': 'False', 'score': 10},
      ]
    },
    {
      'questionText': 'Q7. Which of the following widgets use for layout ?',
      'answers': [
        {'text': 'Text', 'score': 0},
        {'text': 'Column', 'score': 10},
        {'text': 'Expanded', 'score': 0},
        {'text': 'Inkwell', 'score': 0},
      ]
    },
    {
      'questionText': 'Q8. Flutter use platform primitives ?',
      'answers': [
        {'text': 'True', 'score': 0},
        {'text': 'False', 'score': 10},
      ]
    },
    {
      'questionText': 'Q9. Flutter uses one code base ?',
      'answers': [
        {'text': 'True', 'score': 10},
        {'text': 'False', 'score': 0},
      ]
    },
    {
      'questionText':
          'Q10. Which of the following widgets used for repeating the content ?',
      'answers': [
        {'text': 'Expanded', 'score': 0},
        {'text': 'ListView', 'score': 10},
        {'text': 'Stack', 'score': 0},
        {'text': 'Scaffold', 'score': 0},
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App ",
              style: TextStyle(
                color: isSwitched == false ? Colors.white : Colors.black,
              )), // app name here
          actions: <Widget>[
            Switch(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                });
                //easy code for dark theme
                //color:isSwitched == false ? Colors.black : Colors.white,
              },
              activeColor: Colors.white,
              inactiveThumbColor: Colors.black,
              inactiveTrackColor: Colors.black,
            )
          ],
        ),
        // ignore: sized_box_for_whitespace, avoid_unnecessary_containers
        body: Container(
          color: isSwitched == false ? Colors.white : Colors.black,
          child: _questionIndex < _question.length
              ? Quiz(_question, _questionIndex, answerQuestion)
              : Result(_resetQuiz, _totalScore),
        ),
        /* floatingActionButton: FloatingActionButton(
            child: Icon(
              Icons.arrow_back,
              color: w,
              size: 40,
            ),
            onPressed: () {
              if (_questionIndex == 1) _totalScore -= num0;
              if (_questionIndex == 2) _totalScore -= num1;
              if (_questionIndex == 3) _totalScore -= num2;
              setState(() {
                if (_questionIndex > 0) {}
              });
              print("_questionIndex=$_questionIndex");
              print("num0=$num0");
              print("num0=$num1");
              print("num0=$num2");
              print("_totalScore=$_totalScore");
            }),
            */
      ),
    );
  }
}
