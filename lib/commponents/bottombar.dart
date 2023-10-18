import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomBar extends StatelessWidget {
  void Function(int)? onTabChange;
  BottomBar({
    super.key,
    required this.onTabChange,
  });

  @override
  Widget build(BuildContext context) {
    return GNav(
        onTabChange: (value) => onTabChange!(value),
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        color: const Color.fromARGB(221, 4, 35, 103),
        activeColor: Colors.amber,
        tabBorderRadius: 10,
        iconSize: 30,
        tabActiveBorder:
            Border.all(color: const Color.fromARGB(255, 104, 4, 4)),
        padding: const EdgeInsets.symmetric(
            horizontal: 10, vertical: 0), // navigation bar padding
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Product',
          ),
          GButton(
            icon: Icons.shopping_bag_outlined,
            text: 'Cart',
          ),
          GButton(
            icon: Icons.search,
            text: 'Search',
          ),
          GButton(
            icon: Icons.person_2_outlined,
            text: 'Profile',
          )
        ]);
  }
}
