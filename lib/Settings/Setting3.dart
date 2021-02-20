import 'package:fluix/Components/CustomAppBar.dart';
import 'package:flutter/material.dart';

class Settings3 extends StatefulWidget {
  static final String path = "lib/Profile/Settings3.dart";

  @override
  _Settings3State createState() => _Settings3State();
}

class _Settings3State extends State<Settings3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: CustomAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25,),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                CircleAvatar(child: Icon(Icons.person, size: MediaQuery.of(context).size.height*0.07,), radius: MediaQuery.of(context).size.height*0.05,),
                SizedBox(width: 20,),
                Text("David Caim", textScaleFactor: 2, style: TextStyle(fontWeight: FontWeight.bold),),
              ],
            ),
            SizedBox(height: 10,),
            customTile("Overviews", Icons.home),
            customTile("Orders", Icons.shopping_basket),
            customTile("Menu", Icons.menu),
            customTile("Customers", Icons.people),
            customTile("Messages", Icons.message),
            customTile("Settings", Icons.settings),
            customTile("Logout", Icons.exit_to_app),
          ],
        ),
      ),
    );
  }

  Widget customTile(String text, IconData icon) {
    return ListTile(
      leading: Icon(icon, size: MediaQuery.of(context).size.height*0.05,),
      title: Text(text, textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold),),
    );
  }
}