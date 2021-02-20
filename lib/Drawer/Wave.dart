import 'package:fluix/Components/CustomAppBar.dart';
import 'package:fluix/Utils/Theme.dart';
import 'package:flutter/material.dart';
import 'package:wave_drawer/wave_drawer.dart';

/*TODO: PLEASE MAKE SURE TO IMPORT ALL THE PACKAGES & FILES AS SHOWN ABOVE YOU CAN REPLACE THE DEMO SCREENS WITH YOUR SCREEN*/

class Wave extends StatefulWidget {
  static final String path = "lib/Drawer/Wave.dart";
  @override
  _WaveState createState() => _WaveState();
}

class _WaveState extends State<Wave> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: CustomAppBar(),
        preferredSize: Size.fromHeight(56),
      ),
      drawer: WaveDrawer(
        backgroundColor: Color(0XFF4E5B81),
        boundaryColor: enableDarkMode ? Colors.teal : Colors.blue,
        boundaryWidth: 8.0,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Image.asset("images/logo.png"),
              decoration: BoxDecoration(
                color: enableDarkMode ? Colors.teal : Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Screen 1',
                  style: Theme.of(context).primaryTextTheme.headline6),
              onTap: () {
                //TODO: screen
              },
            ),
            ListTile(
              title: Text(
                'Screen 2',
                style: Theme.of(context).primaryTextTheme.headline6,
              ),
              onTap: () {
                //TODO: screen
              },
            ),
          ],
        ),
      ),
      body: Container(
          color: Color(0XFF27314F),
          child: Center(
              child: Text(
            "Demo Screen",
            style: TextStyle(color: Colors.white),
          ))),
    );
  }
}
