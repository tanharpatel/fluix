import 'package:flutter/material.dart';

class DemoScreen4 extends StatelessWidget {
  static final String path = "lib/DemoScreens/DemoScreen4";
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: screenSize.height,
        width: screenSize.width,
        color: Colors.redAccent,
        child: Center(child: Text("DemoScreen4",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20.0),)),
      ),
    );
  }
}
