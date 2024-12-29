import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final int? index;
  final VoidCallback? onTap;
  const CategoryItem({
    super.key,
    this.title = '',
    this.subtitle = '',
    this.index = 1,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              blurRadius: 10,
              color: Color.fromARGB(70, 0, 0, 0),
            ),
          ],
          color: Colors.red,
        ),
        width: 400,
        height: 200,
        child: Stack(
          children: [
            Row(
              children: [
                const Spacer(),
                Image.asset("assets/home_image_$index.png"),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 130, 0),
                    child: Container(
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 10,
                            blurRadius: 40,
                            color: Colors.red,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 25,
                            ),
                            Text(
                              title!,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              subtitle!,
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
