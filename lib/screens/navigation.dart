import 'package:flutter/material.dart';
import 'home.dart';
import 'product.dart';
import 'cart.dart';
import 'profile.dart';


class Navigation extends StatefulWidget {
  final String username;

  const Navigation({super.key, required this.username});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      HomeScreen(username: widget.username),
      const ProductPage(),
      const CartPage(),
      const ProfilePage(),
      ];

      return Scaffold(
      body: IndexedStack(index: currentIndex, children: pages),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,

        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),

          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: "Products",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: "Account",
          ),

        ],
      ),
    );
  }
}
