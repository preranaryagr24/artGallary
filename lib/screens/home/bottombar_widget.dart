import 'package:artsells/screens/upload/uploadScreen.dart';
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
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            const BottomNavigationBarItem(
                icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => UploadScreen())),
                  icon: Icon(Icons.add_a_photo_rounded),
                ),
                label: 'add'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.favorite_outline_rounded), label: 'heart'),
            const BottomNavigationBarItem(icon: CircleAvatar(), label: 'user'),
          ]),
    );
  }
}
