import 'package:flutter/material.dart';

class PremiumItem extends StatelessWidget {
  final String? text;
  final IconData? icon;
  final bool? bold;
  const PremiumItem({
    super.key,
    this.text = '',
    this.icon = Icons.food_bank,
    this.bold = true,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon!,
          color: Colors.red,
          size: 30,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          text!,
          style: TextStyle(
              fontSize: 17, fontWeight: bold! ? FontWeight.w500 : null),
        )
      ],
    );
  }
}
