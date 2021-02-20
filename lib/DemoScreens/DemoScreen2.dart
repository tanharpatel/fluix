import 'package:flutter/material.dart';

class DemoScreen2 extends StatelessWidget {
  static final String path = "lib/DemoScreens/DemoScreen2";
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: screenSize.height,
        width: screenSize.width,
        color: Colors.pinkAccent,
        child: Center(child: Text("DemoScreen2",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20.0),)),
      ),
    );
  }
}
