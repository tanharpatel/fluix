import 'package:flutter/material.dart';

Widget kRaisedButton(double width, String text, Function onPressed) {
  return Center(
    child: SizedBox(
      width: width,
      child: RaisedButton(
        focusElevation: 3,
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        elevation: 3,
        disabledColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    ),
  );
}
