import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'Which one of these colors you like?',
      'answers': ['Red', 'Blue', "Green"],
    },
    {
      'questionText': 'Which one of the animals you prefer to pet?',
      'answers': ['Dog', 'Cat', "Bird"],
    },
  ];

  var _questionIndex = 0;
  var _stringQuery = '';

  void _answerQuestion(queryAnswer) {
    if (_questionIndex < _questions.length) {
      _stringQuery += '$queryAnswer ';
    } else {
      _stringQuery += '$queryAnswer';
    }
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void _restart() {
    setState(() {
      _questionIndex = 0;
      _stringQuery = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(title: Text('My First App')),
            body: Container(
              margin: EdgeInsets.only(left: 15.0, right: 15.0),
              child: _questionIndex < _questions.length
                  ? Quiz(
                      questions: _questions,
                      questionIndex: _questionIndex,
                      answerHandling: _answerQuestion,
                    )
                  : Result(
                      query: _stringQuery,
                      restart: _restart,
                    ),
            )));
  }
}
