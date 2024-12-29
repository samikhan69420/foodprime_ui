import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/cart_page_item.dart';
import 'package:food_delivery_app/components/login_signup/filled_button.dart';
import 'package:food_delivery_app/screens/navigation/payment.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Image.asset("assets/word_app_logo.png"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SlideUp(
                child: Text(
                  "You have 2 items in your cart",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const SlideUp(
                index: 2,
                child: CartItem(
                  itemName: "Cheese Pizza",
                  storeName: "Times Food",
                  index: 3,
                  price: "23.7",
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SlideUp(
                index: 3,
                child: CartItem(
                  itemName: "Pepperoni Pizza",
                  storeName: "Times Food",
                  index: 2,
                  price: "19.6",
                ),
              ),
              const Spacer(),
              const SlideUp(
                index: 4,
                child: Row(
                  children: [
                    Text("Items",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Spacer(),
                    Text("2", style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SlideUp(
                index: 5,
                child: Row(
                  children: [
                    Text("Delivery Fee",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Spacer(),
                    Text("\$0.00",
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SlideUp(
                index: 6,
                child: Divider(),
              ),
              const SizedBox(
                height: 10,
              ),
              const SlideUp(
                index: 7,
                child: Row(
                  children: [
                    Text("Total",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Spacer(),
                    Text("\$44.8",
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SlideUp(
                index: 8,
                child: Button(
                  filled: true,
                  text: 'Checkout',
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
