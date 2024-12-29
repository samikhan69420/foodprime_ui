import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:food_delivery_app/components/premium_item.dart';

class FoodDetailsPage extends StatelessWidget {
  final Map<String, String> data;
  const FoodDetailsPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        title: Image.asset("assets/word_app_logo.png"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Hero(
                        tag: data['image']!,
                        child: Image.asset(
                          "assets/${data['image']}",
                          fit: BoxFit.cover,
                          scale: .5,
                        )
                            .animate()
                            .slideY(
                                begin: .2,
                                duration: 200.ms,
                                curve: Curves.easeOutCirc,
                                delay: 100.ms)
                            .fadeIn(curve: Curves.easeOutCirc),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(30),
                              ),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                              color: Colors.red,
                            ),
                            child: const Center(
                              child: Text(
                                "1",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.horizontal(
                                right: Radius.circular(30),
                              ),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      )
                          .animate()
                          .slideY(
                              begin: .2,
                              duration: 200.ms,
                              curve: Curves.easeOutCirc,
                              delay: 100.ms)
                          .fadeIn(curve: Curves.easeOutCirc),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Hero(
                          tag: data['title']!,
                          child: Material(
                            child: Text(
                              "${data['title']}",
                              style: const TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 30,
                        ),
                        Text("${data['rating']}"),
                      ],
                    )
                        .animate()
                        .slideY(
                            begin: .2,
                            duration: 200.ms,
                            curve: Curves.easeOutCirc,
                            delay: 200.ms)
                        .fadeIn(curve: Curves.easeOutCirc),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Chicken breast, french fries, baked potatoes wedges",
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    )
                        .animate()
                        .slideY(
                            begin: .2,
                            duration: 200.ms,
                            curve: Curves.easeOutCirc,
                            delay: 300.ms)
                        .fadeIn(curve: Curves.easeOutCirc),
                    const SizedBox(
                      height: 20,
                    ),
                    const PremiumItem(
                      icon: Icons.calendar_today_rounded,
                      text: "Free delivery Sunday, October 23 2:00 PM",
                      bold: false,
                    )
                        .animate()
                        .slideY(
                            begin: .2,
                            duration: 200.ms,
                            curve: Curves.easeOutCirc,
                            delay: 400.ms)
                        .fadeIn(curve: Curves.easeOutCirc),
                    const SizedBox(
                      height: 10,
                    ),
                    const PremiumItem(
                      icon: Icons.location_on_sharp,
                      text: "Deliver to New York 10001",
                      bold: false,
                    )
                        .animate()
                        .slideY(
                            begin: .2,
                            duration: 200.ms,
                            curve: Curves.easeOutCirc,
                            delay: 500.ms)
                        .fadeIn(curve: Curves.easeOutCirc),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: 100,
            color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Total: \$29.9",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    height: 50,
                    width: 200,
                    child: const Center(
                      child: Center(
                        child: Text("Add to cart"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
              .animate()
              .slideY(
                  begin: .2,
                  duration: 200.ms,
                  curve: Curves.easeOutCirc,
                  delay: 600.ms)
              .fadeIn(curve: Curves.easeOutCirc),
        ],
      ),
    );
  }
}
