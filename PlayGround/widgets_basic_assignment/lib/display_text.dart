import 'package:flutter/material.dart';

class DisplayText extends StatelessWidget {
  final String displayText;
  const DisplayText(this.displayText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(30),
      child: Text(
        displayText,
        style: const TextStyle(
          overflow: TextOverflow.ellipsis,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
}
