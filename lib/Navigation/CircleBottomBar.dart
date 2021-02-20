import 'package:circle_bottom_navigation/widgets/tab_data.dart';
import 'package:fluix/Components/CustomAppBar.dart';
import "package:flutter/material.dart";
import 'package:circle_bottom_navigation/circle_bottom_navigation.dart';
import 'package:fluix/DemoScreens/DemoScreen1.dart';
import 'package:fluix/DemoScreens/DemoScreen2.dart';
import 'package:fluix/DemoScreens/DemoScreen3.dart';
import 'package:fluix/DemoScreens/DemoScreen4.dart';

/*TODO: PLEASE MAKE SURE TO IMPORT ALL THE PACKAGES & FILES AS SHOWN ABOVE YOU CAN REPLACE THE DEMO SCREENS WITH YOUR SCREEN*/

class CircleBottomBar extends StatefulWidget {
  static final String path = "lib/Navigaiton/CircleBottomBar.dart";
  @override
  _CircleBottomBarState createState() => _CircleBottomBarState();
}

class _CircleBottomBarState extends State<CircleBottomBar> {
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
      bottomNavigationBar: CircleBottomNavigation(
        initialSelection: _currentindex,
        tabs: [
          TabData(icon: Icons.add_a_photo, iconSize: 20.0, title: "photo"),
          TabData(icon: Icons.chat, iconSize: 20.0, title: "Chat"),
          TabData(icon: Icons.home, iconSize: 20.0, title: "Home"),
          TabData(icon: Icons.camera, iconSize: 20.0, title: "Camera"),
        ],
        onTabChangedListener: (index) {
          setState(() {
            _currentindex = index;
            print(index);
          });
        },
        activeIconColor: Colors.black,
        circleColor: Colors.lightBlueAccent,
        //TODO    circleColor -> Defaults to null, derives from Theme
        //TODO    activeIconColor -> Defaults to null, derives from Theme
        //TODO   inactiveIconColor -> Defaults to null, derives from Theme
        //TODO    textColor -> Defaults to null, derives from Theme
        //TODO    barBackgroundColor -> Defaults to null, derives from Theme
        //TODO     circleSize -> Defaults to 60.0, size of intern circle
        //TODO    barHeight -> Defaults to 60.0, height of bar
        //TODO     arcHeight -> Defaults to 70.0, height of external circle arc
        //TODO      arcWidth -> Defaults to 90.0, width of external circle arc
        //TODO  circleOutline -> Defaults to 10.0
        //TODO   shadowAllowance -> Defaults to 20.0, size of icon shadow
        //TODO      hasElevationShadows -> Defaults to true, define if bar have elevation shadows
        //TODO blurShadowRadius -> Defaults to 8.0, size of bar shadow if hasElevationShadows is true
        //TODO key -> Defaults to null
      ),
    );
  }
}
