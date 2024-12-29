import 'package:flutter/material.dart';
import 'package:food_delivery_app/list_data/food_prime_data.dart';

Widget buildFruitCategory() {
  return Expanded(
    child: GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      children: FRUIT_CATEGORY_LIST.map(
        (e) {
          return Column(
            children: [
              Stack(
                children: [
                  Image.asset('assets/${e['image']}'),
                  Positioned(
                    bottom: 20,
                    right: 20,
                    child: Container(
                      width: 35,
                      height: 25,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                          child: Text(
                        '${e['price']}',
                        style: const TextStyle(color: Colors.white),
                      )),
                    ),
                  )
                ],
              ),
              Text('${e['title']}'),
            ],
          );
        },
      ).toList(),
    ),
  );
}

Widget buildVegitableCategory() {
  return Expanded(
    child: GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      children: VEGETABLES_CATEGORY_LIST.map(
        (e) {
          return Column(
            children: [
              Stack(
                children: [
                  Image.asset('assets/${e['image']}'),
                  Positioned(
                    bottom: 20,
                    right: 20,
                    child: Container(
                      width: 35,
                      height: 25,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                          child: Text(
                        '${e['price']}',
                        style: const TextStyle(color: Colors.white),
                      )),
                    ),
                  )
                ],
              ),
              Text('${e['title']}'),
            ],
          );
        },
      ).toList(),
    ),
  );
}

Widget buildKitchenCategory() {
  return Expanded(
    child: GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      children: KITCHEN_CATEGORY_LIST.map(
        (e) {
          return Column(
            children: [
              Stack(
                children: [
                  Image.asset('assets/${e['image']}'),
                  Positioned(
                    bottom: 20,
                    right: 20,
                    child: Container(
                      width: 35,
                      height: 25,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                          child: Text(
                        '${e['price']}',
                        style: const TextStyle(color: Colors.white),
                      )),
                    ),
                  )
                ],
              ),
              Text('${e['title']}'),
            ],
          );
        },
      ).toList(),
    ),
  );
}
