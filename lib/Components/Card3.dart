import 'package:flutter/material.dart';

Widget card3(IconData icon, String label, BuildContext context, Color color) {
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        height: MediaQuery.of(context).size.height*0.15,
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(
                color: color,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Icon(icon, color: Colors.white,),
                ),
              ),
              Text(label),
            ],
          ),
        ),
      ),
    ),
  );
}