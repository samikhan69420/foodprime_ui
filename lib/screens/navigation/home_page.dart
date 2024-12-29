import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:food_delivery_app/components/home_page/home_page_category_item.dart';
import 'package:food_delivery_app/screens/navigation/home_page_screens.dart/food.dart';
import 'package:food_delivery_app/screens/navigation/home_page_screens.dart/grocery_and_fruits.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              SlideLeft(
                child: CategoryItem(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const GroceryPage(),
                    ),
                  ),
                  title: "Grocery and fruits",
                  subtitle: "Order fresh vegitables & fruits anytime, anywhere",
                  index: 1,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SlideLeft(
                index: 1.3,
                child: CategoryItem(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FoodPage(),
                    ),
                  ),
                  title: "Food",
                  subtitle:
                      "Order from your favorite restaurants and home chefs",
                  index: 2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SlideLeft extends StatelessWidget {
  final Widget child;
  final double? index;
  const SlideLeft({
    required this.child,
    this.index = 1,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return child
        .animate()
        .slideX(begin: .3, curve: Curves.easeOutCirc, delay: (index! * 100).ms)
        .fadeIn(curve: Curves.easeOutCirc);
  }
}
