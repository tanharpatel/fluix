import 'package:flutter/material.dart';

Widget card2(String label, String label2, BuildContext context, Color color, Color color2) {
  return Container(
    width: MediaQuery.of(context).size.width*0.45,
    height: MediaQuery.of(context).size.height*0.2,
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(colors: [color, color2], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(label, style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.025,)),
          Text(label2, style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.03,)),
        ],
      ),
    ),
  );
}