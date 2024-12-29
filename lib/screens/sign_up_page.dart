import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_touch_ripple/widgets/widget.dart';
import 'package:food_delivery_app/components/login_signup/text_field.dart';
import 'package:food_delivery_app/screens/login_page.dart';
import 'package:food_delivery_app/screens/premium_page.dart';
import 'package:msh_checkbox/msh_checkbox.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              const Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.black,
                ),
              )
                  .animate()
                  .slideY(
                      begin: 0.5,
                      curve: Curves.easeOutCirc,
                      delay: 50.ms,
                      duration: 500.ms)
                  .fadeIn(),
              const SizedBox(
                height: 30,
              ),
              const MyFormField(
                hintText: 'Email',
              )
                  .animate()
                  .slideY(
                      begin: 0.5,
                      curve: Curves.easeOutCirc,
                      delay: 100.ms,
                      duration: 500.ms)
                  .fadeIn(),
              const SizedBox(
                height: 20,
              ),
              const MyFormField(
                hintText: 'Password',
              )
                  .animate()
                  .slideY(
                      begin: 0.5,
                      curve: Curves.easeOutCirc,
                      delay: 150.ms,
                      duration: 500.ms)
                  .fadeIn(),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MSHCheckbox(
                    duration: 300.ms,
                    size: 20,
                    colorConfig: MSHColorConfig(
                      checkColor: (p0) => Colors.white,
                      fillColor: (p0) => Colors.red,
                      tintColor: (p0) => Colors.red,
                    ),
                    style: MSHCheckboxStyle.fillScaleColor,
                    onChanged: (value) {
                      setState(() {
                        checked = value;
                      });
                    },
                    value: checked,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  RichText(
                      text: const TextSpan(
                          text: "By creating an account, you agree to our ",
                          style: TextStyle(color: Colors.black),
                          children: [
                        TextSpan(
                          text: "Privacy policy\n",
                          style: TextStyle(color: Colors.red),
                        ),
                        TextSpan(
                          text: "and our ",
                          style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                          text: "Terms and Conditions",
                          style: TextStyle(color: Colors.red),
                        ),
                      ]))
                ],
              )
                  .animate()
                  .slideY(
                      begin: 0.5,
                      curve: Curves.easeOutCirc,
                      delay: 200.ms,
                      duration: 500.ms)
                  .fadeIn(),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.red),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PremiumPage(),
                    ),
                  );
                },
                child: const SizedBox(
                  width: double.maxFinite,
                  child: Center(
                    child: Text(
                      "Create your account",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
                  .animate()
                  .slideY(
                      begin: 0.5,
                      curve: Curves.easeOutCirc,
                      delay: 250.ms,
                      duration: 500.ms)
                  .fadeIn(),
              const SizedBox(
                height: 40,
              ),
              const SizedBox(
                height: 30,
              ),
              const Spacer(
                flex: 1,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account? "),
                    TouchRipple(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ),
                          (route) => false,
                        );
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(color: Colors.redAccent),
                      ),
                    ),
                  ],
                )
                    .animate()
                    .slideY(
                        begin: 0.5,
                        curve: Curves.easeOutCirc,
                        delay: 300.ms,
                        duration: 500.ms)
                    .fadeIn(),
              ),
              const SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      ),
    );
  }
}
