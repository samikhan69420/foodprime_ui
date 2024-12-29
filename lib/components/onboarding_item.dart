import 'package:flutter/material.dart';

class OnboardingItem extends StatelessWidget {
  final int? index;
  final String? title;
  final String? subtitle;
  const OnboardingItem({
    this.index = 1,
    this.title = '',
    this.subtitle = '',
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      width: 400,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/word_app_logo.png"),
          const SizedBox(
            height: 100,
          ),
          Image.asset("assets/onboarding_$index.png"),
          SizedBox(
            height: index == 2 ? 30 : 50,
          ),
          Text(
            textAlign: TextAlign.center,
            title!,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            textAlign: TextAlign.center,
            subtitle!,
            style: const TextStyle(
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
