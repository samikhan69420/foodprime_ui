import 'package:flutter/material.dart';
import 'package:food_delivery_app/list_data/food_prime_data.dart';
import 'package:food_delivery_app/screens/navigation/home_page_screens.dart/food_details.dart';

buildSpecialBurger(BuildContext context) {
  return SizedBox(
    height: 300,
    child: ListView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      children: BURGER_SPECIAL_CATEGORY_LIST.map(
        (e) {
          return GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FoodDetailsPage(data: e),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 300,
                  child: Image.asset(
                    "assets/${e['image']}",
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${e['title']}",
                            style: const TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "\$5 Delivery fee 20 - 40 Min",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: 20,
                        child: Center(
                          child: Text(
                            "${e['rating']}",
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ).toList(),
    ),
  );
}

buildSpecialPizza(BuildContext context) {
  return SizedBox(
    height: 300,
    child: ListView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      children: PIZZA_SPECIAL_CATEGORY_LIST.map(
        (e) {
          return GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FoodDetailsPage(data: e),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 300,
                  child: Image.asset(
                    "assets/${e['image']}",
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${e['title']}",
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "\$5 Delivery fee 20 - 40 Min",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 20,
                      child: Center(
                        child: Text(
                          "${e['rating']}",
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          );
        },
      ).toList(),
    ),
  );
}

buildSpecialSandwich(BuildContext context) {
  return SizedBox(
    height: 300,
    child: ListView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      children: SANDWICH_SPECIAL_CATEGORY_LIST.map(
        (e) {
          return GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FoodDetailsPage(data: e),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 300,
                  child: Image.asset(
                    "assets/${e['image']}",
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${e['title']}",
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "\$5 Delivery fee 20 - 40 Min",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 20,
                      child: Center(
                        child: Text(
                          "${e['rating']}",
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          );
        },
      ).toList(),
    ),
  );
}
