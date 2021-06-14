import 'package:fluix/DemoScreens/DemoScreen1.dart';
import 'package:fluix/DemoScreens/DemoScreen2.dart';
import 'package:fluix/DemoScreens/DemoScreen3.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

/*TODO: PLEASE MAKE SURE TO IMPORT ALL THE PACKAGES & FILES AS SHOWN ABOVE YOU CAN REPLACE THE DEMO SCREENS WITH YOUR SCREEN*/

class Drawer1 extends StatelessWidget {
  static final String path = "lib/Drawer/Hidden.dart";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Hidden(),
    );
  }
}

class Hidden extends StatefulWidget {
  static final String path = "lib/Drawers/HiddenDrawer.dart";

  @override
  _HiddenState createState() => _HiddenState();
}

class _HiddenState extends State<Hidden> {
  List<ScreenHiddenDrawer> items = List();

  @override
  void initState() {
    items.add(ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: "Screen 1",
          baseStyle:
              TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 28.0),
          colorLineSelected: Colors.teal,
        ),
        DemoScreen1()));

    items.add(ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: "Screen 2",
          baseStyle:
              TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 28.0),
          colorLineSelected: Colors.orange,
        ),
        DemoScreen2()));

    items.add(ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: "Screen 3",
          baseStyle:
              TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 28.0),
        ),
        DemoScreen3()));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Colors.blueGrey,
      backgroundColorAppBar: Colors.cyan,
      screens: items,
      verticalScalePercent: 80.0,
      contentCornerRadius: 40.0,
      enableShadowItensMenu: true,
      //TODO:    typeOpen: TypeOpen.FROM_RIGHT,
      //TODO:    disableAppBarDefault: false,
      //TODO:  enableScaleAnimin: true,
      //TODO:   enableCornerAnimin: true,
      //TODO:    slidePercent: 80.0,
      //TODO:    iconMenuAppBar: Icon(Icons.menu),
      //TODO:    backgroundContent: DecorationImage((image: ExactAssetImage('assets/bg_news.jpg'),fit: BoxFit.cover),
      //TODO:    whithAutoTittleName: true,
      //TODO:    styleAutoTittleName: TextStyle(color: Colors.red),
      //TODO:    actionsAppBar: <Widget>[],
      //TODO:    backgroundColorContent: Colors.blue,
      //TODO:    elevationAppBar: 4.0,
      //TODO:    tittleAppBar: Center(child: Icon(Icons.ac_unit),),
      //TODO:    backgroundMenu: DecorationImage(image: ExactAssetImage('assets/bg_news.jpg'),fit: BoxFit.cover),
    );
  }
}
