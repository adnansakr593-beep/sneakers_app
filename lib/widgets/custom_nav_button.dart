import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// ignore: must_be_immutable
class CustomNavButton extends StatelessWidget {
  void Function(int)? onTabChange;
   CustomNavButton({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      // ignore: avoid_unnecessary_containers
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 24),
        child: GNav
        (
          gap: 10,
          onTabChange: (value) => onTabChange!(value),
          mainAxisAlignment: MainAxisAlignment.center,
          color: Colors.grey[400],
          activeColor: Colors.grey.shade700,
          tabActiveBorder: Border.all(color: Colors.white),
          tabBackgroundColor: Colors.grey.shade100,
          tabs: 
          [
            GButton
            (
              icon: Icons.home,
              text: ' Shop',
            ),
        
            GButton
            (
              icon: Icons.shopping_bag_rounded,
              text: ' Cart',
            ),
          ]
        ),
      ),
    );
  }
}

