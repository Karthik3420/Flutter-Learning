import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';
import 'package:quiz_app/answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion; //voidCallback is nothing but Function
  final int questionIndex;
  final List<String> answers = [];

  Quiz(
      {required this.questions,
      required this.answerQuestion,
      required this.questionIndex}){
        for (var answer in questions[questionIndex]['answers'] as List) {
          answers.add(answer['text']);
        }
        print(answers);
      }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'] as String,
        ), //questions[0]
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text'] as String);
        }).toList(),
      ],
    );
  }
}
