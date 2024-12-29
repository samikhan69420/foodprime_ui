import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:food_delivery_app/components/onboarding_item.dart';
import 'package:food_delivery_app/screens/login_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding extends StatefulWidget {
  Onboarding({super.key});

  final List<OnboardingItem> onboardingItemsList = [
    const OnboardingItem(
      title: "On demand & runtime\nlocation",
      subtitle: "Pick from your location at your\nspreferred date and time.",
      index: 1,
    ),
    const OnboardingItem(
      title: "Anything, anytime,\nanywhere.",
      subtitle:
          "Whether it's a parcel, a cheque or\nan important doc, we'll parcel.",
      index: 2,
    ),
    const OnboardingItem(
      title: "Live track\nyour shipments",
      subtitle:
          "See a realtime view of your courier\non the map on the day of delivery.",
      index: 3,
    ),
  ];

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final PageController pageController = PageController();
  int scrollIndex = 0;
  bool showButton = false;

  @override
  void initState() {
    super.initState();
    pageController.addListener(
      () {
        showButton = pageController.page.round() == 3;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            SizedBox(
              height: 500,
              child: PageView.builder(
                controller: pageController,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return widget.onboardingItemsList[index];
                },
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SmoothPageIndicator(
              controller: pageController,
              count: 3,
              effect: const JumpingDotEffect(
                verticalOffset: 10,
                activeDotColor: Colors.red,
                dotColor: Color.fromARGB(50, 0, 0, 0),
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                showButton
                    ? null
                    : Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ));
              },
              child: AnimatedContainer(
                duration: 100.ms,
                height: 75,
                width: double.infinity,
                color: showButton ? Colors.red : Colors.white,
                child: const Center(
                  child: Text(
                    "Proceed",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
