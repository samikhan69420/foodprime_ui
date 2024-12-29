import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/navigation/payment.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Image.asset("assets/word_app_logo.png"),
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(50),
                child: Row(
                  children: [
                    SlideUp(
                      index: 2,
                      child: CircleAvatar(
                        radius: 50,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    SlideUp(
                      index: 3,
                      child: Text(
                        "John Smith",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ],
                ),
              ),
              SlideUp(index: 4, child: Divider()),
              SlideUp(
                index: 5,
                child: ProfileItem(
                  icon: Icons.language,
                  text: "Language",
                ),
              ),
              SlideUp(
                index: 6,
                child: ProfileItem(
                  icon: Icons.help,
                  text: "Help",
                ),
              ),
              SlideUp(
                index: 7,
                child: ProfileItem(
                  icon: Icons.sunny,
                  text: "Theme",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileItem extends StatelessWidget {
  final IconData? icon;
  final String? text;
  const ProfileItem({
    super.key,
    this.icon = Icons.language,
    this.text = '',
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(15),
        ),
        height: 70,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Icon(
                icon!,
                size: 30,
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                text!,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
