import 'package:fluix/Components/CustomAppBar.dart';
import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:fluix/DemoScreens/DemoScreen1.dart';
import 'package:fluix/DemoScreens/DemoScreen2.dart';
import 'package:fluix/DemoScreens/DemoScreen3.dart';
import 'package:fluix/DemoScreens/DemoScreen4.dart';

/*TODO: PLEASE MAKE SURE TO IMPORT ALL THE PACKAGES & FILES AS SHOWN ABOVE YOU CAN REPLACE THE DEMO SCREENS WITH YOUR SCREEN*/

class ConvexNavigation extends StatefulWidget {
  static final String path = 'lib/Navigation/ConvexNavigation';
  @override
  _ConvexNavigationState createState() => _ConvexNavigationState();
}

class _ConvexNavigationState extends State<ConvexNavigation> {
  int _currentindex = 0;
  final List<Widget> _children = [
    DemoScreen1(),
    DemoScreen2(),
    DemoScreen3(),
    DemoScreen4(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: CustomAppBar(),
        preferredSize: Size.fromHeight(56),
      ),
      body: _children[_currentindex],
      bottomNavigationBar: ConvexAppBar(
        items: [
          TabItem(
              icon: Icon(
                Icons.add_a_photo,
                size: 20,
              ),
              title: "Photo"),
          TabItem(
              icon: Icon(
                Icons.home,
                size: 20,
              ),
              title: "Home"),
          TabItem(
              icon: Icon(
                Icons.chat,
                size: 20,
              ),
              title: "Chat"),
          TabItem(
              icon: Icon(
                Icons.missed_video_call,
                size: 20,
              ),
              title: "Video"),
        ],
        initialActiveIndex: 0,
        onTap: (int index) {
          setState(() {
            _currentindex = index;
          });
        },
      ),
    );
  }
}
