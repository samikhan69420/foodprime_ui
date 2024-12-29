import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:food_delivery_app/components/login_signup/filled_button.dart';
import 'package:food_delivery_app/components/premium_item.dart';
import 'package:food_delivery_app/screens/main_screen.dart';
import 'package:food_delivery_app/screens/navigation/payment.dart';

class PremiumPage extends StatelessWidget {
  const PremiumPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 40),
                    child: Image.asset('assets/word_app_logo.png'),
                  ),
                ),
                animateWidget(
                    const Text(
                      "The best of your,\nneighbourhood,\ndelivered for less.",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    1),
                const SizedBox(
                  height: 30,
                ),
                animateWidget(
                    const PremiumItem(
                      text: "Save an average of \$4 to 5 per order.",
                      icon: Icons.food_bank,
                    ),
                    2),
                const SizedBox(
                  height: 20,
                ),
                animateWidget(
                    const PremiumItem(
                      text:
                          "Look for FoodPrime logo to find\n1k eligible restaurants.",
                      icon: Icons.restaurant,
                    ),
                    3),
                const SizedBox(
                  height: 20,
                ),
                animateWidget(
                    const PremiumItem(
                      text:
                          "Enjoy zero delivery fees and reduced\nservice fees on order \$12.",
                      icon: Icons.shopping_cart,
                    ),
                    4),
                const SizedBox(
                  height: 20,
                ),
                animateWidget(
                    const PremiumItem(
                      text:
                          "Free 1 month trial, \$9.99 monthly\nafter, easily cancel anything.",
                      icon: Icons.calendar_today,
                    ),
                    5),
                const SizedBox(
                  height: 30,
                ),
                const Spacer(),
                animateWidget(
                    Button(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PaymentPage(),
                          ),
                        );
                      },
                      filled: true,
                      text: 'Avail Offer',
                    ),
                    6),
                const SizedBox(
                  height: 20,
                ),
                animateWidget(
                    Button(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MainScreen(),
                          ),
                          (route) => false,
                        );
                      },
                      filled: false,
                      text: 'Lose offer',
                    ),
                    7),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget animateWidget(Widget child, int number) {
  return child
      .animate()
      .slideX(begin: 0.1, delay: (number * 50).ms, curve: Curves.easeOutCirc)
      .fadeIn();
}
