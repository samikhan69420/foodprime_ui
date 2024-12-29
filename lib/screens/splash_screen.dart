import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:food_delivery_app/screens/onboarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(5.seconds).then(
      (value) => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Onboarding(),
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 400,
                height: 400,
                child: Image.asset(
                  "assets/app_logo.png",
                ),
              )
                  .animate()
                  .scale(curve: Curves.easeOutCirc)
                  .fadeIn(curve: Curves.easeOutCirc, delay: 100.ms)
                  .moveY(end: -20, delay: 1000.ms, curve: Curves.easeInOutCirc),
              const SizedBox(
                width: 300,
                child: LinearProgressIndicator(
                  color: Color.fromARGB(255, 255, 255, 255),
                  backgroundColor: Color.fromARGB(15, 0, 0, 0),
                ),
              )
                  .animate()
                  .moveY(end: -100, begin: -80, curve: Curves.easeOutCirc)
                  .scaleX(
                      begin: 0,
                      end: 1,
                      delay: 1200.ms,
                      curve: Curves.easeOutCirc),
            ],
          ),
        ),
      ),
    );
  }
}
