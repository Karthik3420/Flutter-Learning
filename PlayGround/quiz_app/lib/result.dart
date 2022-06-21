import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String resultDetails;
  final VoidCallback resetHandler;
  Result({required this.resultDetails, required this.resetHandler});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultDetails,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          TextButton(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(16.0),
              primary: Colors.redAccent,
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: resetHandler,
            child: const Text('Reset Quiz'),
          ),
        ],
      ),
    );
  }
}
