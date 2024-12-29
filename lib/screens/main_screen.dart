import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:food_delivery_app/screens/navigation/cart_page.dart';
import 'package:food_delivery_app/screens/navigation/home_page.dart';
import 'package:food_delivery_app/screens/navigation/profile_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: FlashyTabBar(
        selectedIndex: selectedIndex,
        animationDuration: 250.ms,
        onItemSelected: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        items: [
          FlashyTabBarItem(
            activeColor: Colors.red,
            icon: const Icon(Icons.home),
            title: const Text('Home'),
          ),
          FlashyTabBarItem(
            activeColor: Colors.red,
            icon: const Icon(Icons.shopping_cart),
            title: const Text('Cart'),
          ),
          FlashyTabBarItem(
            activeColor: Colors.red,
            icon: const Icon(Icons.person),
            title: const Text('Account'),
          ),
        ],
      ),
      body: switchOnPages(selectedIndex),
    );
  }

  Widget switchOnPages(int index) {
    switch (index) {
      case 0:
        {
          return const HomePage();
        }
      case 1:
        {
          return const CartPage();
        }
      case 2:
        {
          return const ProfilePage();
        }
      default:
        {
          return Container();
        }
    }
  }
}
