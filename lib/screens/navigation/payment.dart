import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:food_delivery_app/components/login_signup/filled_button.dart';
import 'package:food_delivery_app/components/login_signup/text_field.dart';
import 'package:food_delivery_app/components/payment_done.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Image.asset("assets/word_app_logo.png"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const SlideUp(
                index: 3,
                child: Text(
                  "Select Payment Method",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SlideUp(
                    index: 4,
                    child: paymentOption(0),
                  ),
                  SlideUp(
                    index: 5,
                    child: paymentOption(1),
                  ),
                  SlideUp(
                    index: 6,
                    child: paymentOption(2),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const SlideUp(
                index: 7,
                child: MyFormField(hintText: 'Card Number'),
              ),
              const SizedBox(
                height: 20,
              ),
              const SlideUp(
                index: 8,
                child: MyFormField(hintText: 'Expiration Date (DD/MM/YYYY)'),
              ),
              const SizedBox(
                height: 20,
              ),
              const SlideUp(
                index: 9,
                child: MyFormField(hintText: 'Security Code'),
              ),
              const SizedBox(
                height: 50,
              ),
              SlideUp(
                index: 10,
                child: Button(
                  onPressed: () {
                    paymentDoneDialog(context);
                  },
                  filled: true,
                  text: "Order Now",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget paymentOption(int index) {
  List<String> imageList = [
    "assets/master_card.png",
    "assets/visa.png",
    "assets/paypal.png",
  ];
  return Container(
    height: 120,
    width: 130,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Image.asset(
      imageList[index],
      scale: .9,
    ),
  );
}

class SlideUp extends StatelessWidget {
  final Widget child;
  final int? index;
  const SlideUp({
    required this.child,
    this.index = 1,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return child
        .animate()
        .slideY(begin: .3, curve: Curves.easeOutCirc, delay: (index! * 100).ms)
        .fadeIn(curve: Curves.easeOutCirc);
  }
}
