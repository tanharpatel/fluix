import 'package:fluix/Utils/Theme.dart';
import 'package:flutter/material.dart';

Widget kTextField(
    String labelText, Icon prefixIcon, FocusNode focusNode, String textField) {
  return Material(
    elevation: 3,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    child: TextField(
      focusNode: focusNode,
      onChanged: (value) {
        textField = value;
      },
      keyboardType: TextInputType.text,
      style: TextStyle(color: enableDarkMode ? Colors.teal : Colors.blue),
      decoration: InputDecoration(
        filled: true,
        labelText: labelText,
        prefixIcon: prefixIcon,
        labelStyle:
            TextStyle(color: focusNode.hasFocus ? enableDarkMode ? Colors.teal : Colors.blue : Colors.grey),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 0),
          borderRadius: BorderRadius.circular(30),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: enableDarkMode ? Colors.teal : Colors.blue, width: 2),
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    ),
  );
}
