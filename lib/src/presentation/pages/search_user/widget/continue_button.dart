import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ContinueButton extends StatelessWidget {
  ContinueButton({
    super.key,
    required this.onPressed,
  });
  VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(200, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: Colors.blueAccent,
          textStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        child: const Text(
          'Continue',
          style: TextStyle(
            color: Colors.white,
          ),
        ));
  }
}
