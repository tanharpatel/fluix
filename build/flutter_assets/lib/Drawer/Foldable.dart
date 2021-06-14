import 'package:fluix/DemoScreens/DemoScreen1.dart';
import 'package:fluix/DemoScreens/DemoScreen2.dart';
import 'package:fluix/DemoScreens/DemoScreen3.dart';
import 'package:fluix/Utils/Theme.dart';
import "package:flutter/material.dart";
import "package:foldable_sidebar/foldable_sidebar.dart";

/*TODO: PLEASE MAKE SURE TO IMPORT ALL THE PACKAGES & FILES AS SHOWN ABOVE YOU CAN REPLACE THE DEMO SCREENS WITH YOUR SCREEN*/

class Foldable extends StatefulWidget {
  static final String path = "lib/Drawer/Foldable.dart";
  @override
  _FoldableState createState() => _FoldableState();
}

class _FoldableState extends State<Foldable> {
  FSBStatus status;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FoldableSidebarBuilder(
        drawerBackgroundColor: Colors.deepOrange,
        status: status,
        drawer: CustomDrawer(
          closeDrawer: () {
            setState(() {
              status = FSBStatus.FSB_CLOSE;
            });
          },
        ),
        screenContents: DemoScreen1(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.menu),
        onPressed: () {
          setState(() {
            status = status == FSBStatus.FSB_OPEN
                ? FSBStatus.FSB_CLOSE
                : FSBStatus.FSB_OPEN;
          });
        },
      ),
    );
  }
}

class CustomDrawer extends StatelessWidget {
  final Function closeDrawer;

  const CustomDrawer({Key key, this.closeDrawer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height,
      width: screenSize.width * 0.6,
      color: enableDarkMode ? Colors.teal : Colors.blue,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.grey.withAlpha(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text("Fluix Developers", style: TextStyle(fontFamily: "Dosis", fontSize: 30), textAlign: TextAlign.center,),
              ],
            ),
          ),
          Divider(
            height: 1,
            color: Colors.blueGrey[900],
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushNamed(DemoScreen1.path);
              closeDrawer();
            },
            leading: Icon(Icons.person, color: enableDarkMode ? Colors.white : Colors.black,),
            title: Text('Screen 1'),
          ),
          ListTile(
            onTap: () {
               Navigator.of(context).pushNamed(DemoScreen2.path);
              closeDrawer();
            },
            leading: Icon(Icons.person, color: enableDarkMode ? Colors.white : Colors.black,),
            title: Text('Screen 2'),
          ),
          ListTile(
            onTap: () {
               Navigator.of(context).pushNamed(DemoScreen3.path);
              closeDrawer();
            },
            leading: Icon(Icons.person, color: enableDarkMode ? Colors.white : Colors.black,),
            title: Text('Screen 3'),
          ),
          Divider(
            height: 1,
            color: Colors.blueGrey[900],
          ),
        ],
      ),
    );
  }
}
