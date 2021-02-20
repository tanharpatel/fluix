import 'package:flutter/material.dart';

class DemoScreen1 extends StatelessWidget {
  static final String path = "lib/DemoScreens/DemoScreen1";
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: screenSize.height,
        width: screenSize.width,
        color: Colors.lightGreen,
        child: Center(child: Text("DemoScreen1",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20.0),)),
      ),
    );
  }
}
