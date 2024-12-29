import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_touch_ripple/flutter_touch_ripple.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery_app/components/login_signup/social_media_button.dart';
import 'package:food_delivery_app/components/login_signup/text_field.dart';
import 'package:food_delivery_app/screens/premium_page.dart';
import 'package:food_delivery_app/screens/sign_up_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:msh_checkbox/msh_checkbox.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                "Login",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.black,
                ),
              )
                  .animate()
                  .slideY(begin: 0.5, curve: Curves.easeOutCirc)
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
                    delay: 50.ms,
                    duration: 500.ms,
                  )
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
                      delay: 100.ms,
                      duration: 500.ms)
                  .fadeIn(),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
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
                  const Text("Remember me"),
                  const Spacer(),
                  const Text("Forgot password?"),
                ],
              )
                  .animate()
                  .slideY(
                      begin: 0.5,
                      curve: Curves.easeOutCirc,
                      delay: 150.ms,
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
                      "Login",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
                  .animate()
                  .slideY(
                      begin: 0.5,
                      curve: Curves.easeOutCirc,
                      delay: 200.ms,
                      duration: 500.ms)
                  .fadeIn(),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Divider(
                        color: Colors.black,
                        thickness: 1,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'OR',
                      style: GoogleFonts.aBeeZee(color: Colors.black),
                    ),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 25),
                      child: Divider(
                        color: Colors.black,
                        thickness: 1,
                      ),
                    ),
                  ),
                ],
              )
                  .animate()
                  .slideY(
                      begin: 0.5,
                      curve: Curves.easeOutCirc,
                      delay: 250.ms,
                      duration: 500.ms)
                  .fadeIn(),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(
                    flex: 4,
                  ),
                  const SocialMediButton(
                          icon: FontAwesomeIcons.google, color: Colors.red)
                      .animate()
                      .slideY(
                          begin: 0.5,
                          curve: Curves.easeOutCirc,
                          delay: 300.ms,
                          duration: 500.ms)
                      .fadeIn(),
                  const Spacer(),
                  const SocialMediButton(
                          icon: FontAwesomeIcons.facebook, color: Colors.blue)
                      .animate()
                      .slideY(
                          begin: 0.5,
                          curve: Curves.easeOutCirc,
                          delay: 350.ms,
                          duration: 500.ms)
                      .fadeIn(),
                  const Spacer(),
                  const SocialMediButton(
                          icon: FontAwesomeIcons.linkedin, color: Colors.cyan)
                      .animate()
                      .slideY(
                          begin: 0.5,
                          curve: Curves.easeOutCirc,
                          delay: 400.ms,
                          duration: 500.ms)
                      .fadeIn(),
                  const Spacer(
                    flex: 4,
                  ),
                ],
              ),
              const Spacer(
                flex: 1,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account? "),
                    TouchRipple(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpPage(),
                          ),
                          (route) => false,
                        );
                      },
                      child: const Text(
                        "Create one",
                        style: TextStyle(color: Colors.redAccent),
                      ),
                    ),
                  ],
                )
                    .animate()
                    .slideY(
                        begin: 0.5,
                        curve: Curves.easeOutCirc,
                        delay: 450.ms,
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
