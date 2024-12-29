import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final VoidCallback onPressed;
  final bool filled;
  final String text;

  const Button({
    super.key,
    required this.onPressed,
    this.filled = false,
    this.text = 'Yes',
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red),
          borderRadius: BorderRadius.circular(20),
          color: filled ? Colors.red : Colors.transparent,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: filled ? Colors.white : Colors.red),
          ),
        ),
      ),
    );
  }
}
