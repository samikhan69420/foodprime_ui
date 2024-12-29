import 'package:flutter/material.dart';

class GroceryChip extends StatelessWidget {
  final bool? filled;
  final String? text;
  final VoidCallback? onTap;
  const GroceryChip({
    super.key,
    this.filled = true,
    this.text = '',
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: filled! ? Colors.red : Colors.grey[200],
          borderRadius: BorderRadius.circular(50),
        ),
        height: 50,
        width: 100,
        child: Center(
          child: Text(
            text!,
            style: TextStyle(color: filled! ? Colors.white : Colors.black),
          ),
        ),
      ),
    );
  }
}
