import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/home_page/grocery_chip.dart';
import 'package:food_delivery_app/components/home_page/special_food_category.dart';
import 'package:food_delivery_app/components/home_page/search_widget.dart';
import 'package:food_delivery_app/components/home_page/popular_food_category.dart';
import 'package:food_delivery_app/screens/search_page.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({super.key});

  @override
  State<FoodPage> createState() => _GroceryPageState();
}

class _GroceryPageState extends State<FoodPage> {
  int selectedCategory = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> specialCategoryItems = [
      buildSpecialBurger(context),
      buildSpecialPizza(context),
      buildSpecialSandwich(context),
    ];

    List<Widget> popularCategoryItems = [
      buildPopularBurger(context),
      buildPopularPizza(context),
      buildPopularSandwich(context),
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset("assets/word_app_logo.png"),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SearchPage(),
                    ),
                  ),
                  child: AbsorbPointer(
                    absorbing: true,
                    child: SearchWidget(),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GroceryChip(
                      filled: selectedCategory == 0,
                      text: "Burger",
                      onTap: () {
                        setState(() {
                          selectedCategory = 0;
                        });
                      },
                    ),
                    GroceryChip(
                      filled: selectedCategory == 1,
                      text: "Pizza",
                      onTap: () {
                        setState(() {
                          selectedCategory = 1;
                        });
                      },
                    ),
                    GroceryChip(
                      filled: selectedCategory == 2,
                      text: "Sandwitch",
                      onTap: () {
                        setState(() {
                          selectedCategory = 2;
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Today's special offer",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                specialCategoryItems[selectedCategory],
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Popular Now",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                popularCategoryItems[selectedCategory],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
