import 'package:flutter/material.dart';

class BottombarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 35,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_a_photo_rounded), label: 'add'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_outline_rounded), label: 'heart'),
            BottomNavigationBarItem(icon: CircleAvatar(), label: 'user'),
          ]),
    );
  }
}
