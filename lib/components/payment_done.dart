import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/login_signup/filled_button.dart';
import 'package:food_delivery_app/screens/navigation/payment.dart';

paymentDoneDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => SlideUp(
      index: 2,
      child: Dialog(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(25),
          ),
          height: 400,
          width: 450,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 30),
                child: Icon(
                  Icons.check_circle_outline_rounded,
                  size: 150,
                  color: Colors.red,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Congratulations!",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: Text(
                  "Enjoy the added benifiets of food prime premium!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(22.0),
                child: Button(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  filled: true,
                  text: "Will Do!",
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
