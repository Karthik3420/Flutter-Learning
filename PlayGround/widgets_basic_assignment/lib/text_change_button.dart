import 'package:flutter/material.dart';

class TextChangeButton extends StatelessWidget {
  final VoidCallback buttonHandler;

  const TextChangeButton({required this.buttonHandler});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: buttonHandler,
      style: OutlinedButton.styleFrom(
        primary: Colors.orange,
        side: const BorderSide(color: Colors.orange),
      ),
      child: const Text(
        "Change Text",
      ),
    );
  }
}
