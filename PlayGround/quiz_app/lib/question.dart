import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String
      questionText; //final is ntg but const but if we used const we shld have to assign value for that

  Question(
    this.questionText,
  ); // to turn this into named argument => Question({this.questionText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, //full width of device
      margin: const EdgeInsets.all(10),
      child: Text(
        questionText,
        style: const TextStyle(fontSize: 22),
        textAlign: TextAlign.center,
      ),
    );
  }
}
