
import 'package:flutter/material.dart';

class bottomNavBar extends StatelessWidget {
  const bottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.purple.shade200,
      fixedColor: Colors.grey.shade300,
      elevation: 2,
      
      //selectedItemColor: Colors.purple,
            items: [
        BottomNavigationBarItem(
          label: "",
          icon: Icon(Icons.home,)),
        BottomNavigationBarItem(
          label: "",
          icon: Icon(Icons.list_alt_outlined)),
        BottomNavigationBarItem(
          label: "",
          icon: Icon(Icons.person))
      ],
    );
  }
}