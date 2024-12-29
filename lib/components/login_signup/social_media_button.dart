import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialMediButton extends StatelessWidget {
  final IconData? icon;
  final Color? color;
  const SocialMediButton({super.key, this.icon, this.color});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: color,
      radius: 25,
      child: FaIcon(
        color: Colors.white,
        icon,
        size: 30,
      ),
    );
  }
}
