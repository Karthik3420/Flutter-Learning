import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() => runApp(MyApp());

// class MyApp extends StatelessWidget { //We can convert stateless to stateful by using shift+ctrl+R in VSCode

//   var _questionIndex = 0;
//   void answerQuestion() {
//     _questionIndex += 1;
//     print(_questionIndex);
//   }

//   @override
//   Widget build(BuildContext context) {
//     var questions = ['What\'s your favorite color?', "What is your favorite animal?"];

//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("Quiz App"),
//         ),
//         body: Center(
//             child: Column(children: [
//           Text(questions.elementAt(_questionIndex)), //questions[0]
//           ElevatedButton(
//             child: const Text("Answer 1"),
//             onPressed: answerQuestion,
//           ),
//           ElevatedButton(
//             child: const Text("Answer 2"),
//             onPressed: () => {
//               //...
//               print("Answer Chose!!"), //Anonymous function
//             },
//           ),
//           ElevatedButton(
//             child: const Text("Answer 3"),
//             onPressed: () => print("Answer Chosen!!"), //Anonymous function
//           ),
//         ])),
//       ),
//     );
//   }

//----------Converting to StateFul Widget-------------
class MyApp extends StatefulWidget {
  //We can convert stateless to stateful by using shift+ctrl+R in VSCode

  @override
  State<StatefulWidget> createState() {
    // Implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State {
  //_ infront of name makes that prop or method as private that can only be accessible from inside the file
  var _questionIndex = 0;
  int _totalScore = 0;
  final List<Map<String, Object>> _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Deepu', 'score': 15},
        {'text': 'Karthi', 'score': 1},
        {'text': 'Kamala', 'score': 2},
        {'text': 'Ashritha', 'score': 3},
      ],
    },
  ];

  void _resetQuiz() {
    setState(() {
    _questionIndex = 0;
    _totalScore = 0;
    });
  }

  String get getResult{
    String result;
    if(_totalScore <= 8){
      result = "You are Awesome and innocent";
    }
    else if(_totalScore <= 12){
      result = "You are good";
    }
    else if(_totalScore <= 16){
      result = "You are really ... a Stranger";
    }
    else{
      result = "You are Bad";
    }
    return result;
  }

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex += 1;
    });
    _totalScore += score;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Behavior Test"),
        ),
        body: (_questionIndex < _questions.length)
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex)
            : Result(
                resultDetails: getResult,
                resetHandler: _resetQuiz,
              ),
      ),
    );
  }
}
