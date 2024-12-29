import 'package:flutter/material.dart';
import 'package:food_delivery_app/list_data/food_prime_data.dart';
import 'package:food_delivery_app/screens/navigation/home_page_screens.dart/food_details.dart';

Widget buildPopularBurger(BuildContext context) {
  return GridView(
    physics: const NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    children: BURGER_POPULAR_CATEGORY_LIST.map(
      (e) {
        return GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FoodDetailsPage(data: e),
            ),
          ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/${e['image']}",
                  fit: BoxFit.cover,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text("${e['title']}"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Text("${e['rating']}"),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
    ).toList(),
  );
}

Widget buildPopularPizza(BuildContext context) {
  return GridView(
    physics: const NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    children: PIZZA_POPULAR_CATEGORY_LIST.map(
      (e) {
        return GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FoodDetailsPage(data: e),
            ),
          ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/${e['image']}",
                  fit: BoxFit.cover,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text("${e['title']}"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Text("${e['rating']}"),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
    ).toList(),
  );
}

Widget buildPopularSandwich(BuildContext context) {
  return GridView(
    physics: const NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    children: SANDWICH_POPULAR_CATEGORY_LIST.map(
      (e) {
        return GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FoodDetailsPage(data: e),
            ),
          ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/${e['image']}",
                  fit: BoxFit.cover,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text("${e['title']}"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Text("${e['rating']}"),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
    ).toList(),
  );
}
