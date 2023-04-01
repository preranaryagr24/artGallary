import 'package:artsells/screens/home/homeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Art Gallery',
      theme: ThemeData(primaryColor: Colors.grey),
      home: HomeScreen(),
    );
  }
}