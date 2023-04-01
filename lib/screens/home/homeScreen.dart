import 'package:flutter/material.dart';
import 'package:artsells/screens/home/bottombar_widget.dart';
import 'package:artsells/screens/home/post_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  get bottomNavigationBar => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.camera_alt_outlined,
          size: 30,
          color: Colors.grey[600],
        ),
        titleSpacing: 3,
        title: Text(
          'Artgallery',
          style: TextStyle(
              decoration: TextDecoration.none, fontFamily: 'Billabong'),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                size: 35,
              ),
              onPressed: () {}),
        ],
      ),
      body: PostWidget(),
      bottomNavigationBar: BottombarWidget(),
    );
  }
}
