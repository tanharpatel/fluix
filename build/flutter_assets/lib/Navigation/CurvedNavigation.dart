import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fluix/Components/CustomAppBar.dart';
import 'package:flutter/material.dart';
import 'package:fluix/DemoScreens/DemoScreen1.dart';
import 'package:fluix/DemoScreens/DemoScreen2.dart';
import 'package:fluix/DemoScreens/DemoScreen3.dart';
import 'package:fluix/DemoScreens/DemoScreen4.dart';

/*TODO: PLEASE MAKE SURE TO IMPORT ALL THE PACKAGES & FILES AS SHOWN ABOVE YOU CAN REPLACE THE DEMO SCREENS WITH YOUR SCREEN*/

class CurvedNavigation extends StatefulWidget {
  static final String path = "lib/Navigation/CurvedNavigation.dart";
  @override
  _CurvedNavigationState createState() => _CurvedNavigationState();
}

class _CurvedNavigationState extends State<CurvedNavigation> {
  int _currentindex = 0;
  final List<Widget> _children = [
    DemoScreen1(),
    DemoScreen2(),
    DemoScreen3(),
    DemoScreen4(),
  ];

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        child: CustomAppBar(),
        preferredSize: Size.fromHeight(56),
      ),
      body: _children[_currentindex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.cyanAccent,
        height: screenSize.height / 15,
        index: 0,
        items: <Widget>[
          Icon(
            Icons.add_a_photo,
            size: 20,
          ),
          Icon(
            Icons.chat,
            size: 20,
          ),
          Icon(
            Icons.home,
            size: 20,
          ),
          Icon(
            Icons.calendar_today,
            size: 20,
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentindex = index;
          });
        },
      ),
    );
  }
}
