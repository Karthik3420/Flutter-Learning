// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'dart:js';

import 'package:flutter/material.dart';
import 'package:widgets_basic_assignment/display_text.dart';
import 'package:widgets_basic_assignment/text_change_button.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String displayText = "Before Changing";
  void changeText() {
    setState(() {
      displayText = "Text had changed";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Text Changer"),
        ),
        body: Column(
          children: [
            DisplayText(
              displayText,
            ),
            TextChangeButton(
              buttonHandler: changeText,
            ),
          ],
        ),
      ),
    );
  }
}
