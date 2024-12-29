import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/home_page/grocery_category_builders.dart';
import 'package:food_delivery_app/components/home_page/grocery_chip.dart';
import 'package:food_delivery_app/components/home_page/search_widget.dart';
import 'package:food_delivery_app/screens/search_page.dart';

class GroceryPage extends StatefulWidget {
  const GroceryPage({super.key});

  @override
  State<GroceryPage> createState() => _GroceryPageState();
}

class _GroceryPageState extends State<GroceryPage> {
  int selectedCategory = 0;
  @override
  Widget build(BuildContext context) {
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
                    text: "Fruits",
                    onTap: () {
                      setState(() {
                        selectedCategory = 0;
                      });
                    },
                  ),
                  GroceryChip(
                    filled: selectedCategory == 1,
                    text: "Vegitables",
                    onTap: () {
                      setState(() {
                        selectedCategory = 1;
                      });
                    },
                  ),
                  GroceryChip(
                    filled: selectedCategory == 2,
                    text: "Kitchen",
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
              categoryItems[selectedCategory],
            ],
          ),
        ),
      ),
    );
  }
}

List<Widget> categoryItems = [
  buildFruitCategory(),
  buildVegitableCategory(),
  buildKitchenCategory(),
];
