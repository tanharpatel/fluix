import 'package:flutter/material.dart';

Widget card1(IconData icon, String label, BuildContext context, Color color) {
  return Container(
    width: MediaQuery.of(context).size.width*0.45,
    height: MediaQuery.of(context).size.height*0.15,
    child: Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ShaderMask(
            shaderCallback: (bounds) => LinearGradient(
              colors: [color, color.withOpacity(0.3)],
            ).createShader(bounds),
            child: Icon(icon, color: Colors.white, size: MediaQuery.of(context).size.longestSide*0.07),
          ),
          Text(label),
        ],
      ),
    ),
  );
}