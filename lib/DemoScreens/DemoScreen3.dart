import 'package:flutter/material.dart';

class DemoScreen3 extends StatelessWidget {
  static final String path = "lib/DemoScreens/DemoScreen3";
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: screenSize.height,
        width: screenSize.width,
        color: Colors.orangeAccent,
        child: Center(child: Text("DemoScreen3",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20.0),)),
      ),
    );
  }
}
