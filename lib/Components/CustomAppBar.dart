import 'package:fluix/Utils/Theme.dart';
import 'package:fluix/Utils/Theming.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomAppBar extends StatefulWidget {
  String title;
  CustomAppBar({this.title});
  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        widget.title ?? "FLUIX",
        style: TextStyle(
            color: enableDarkMode ? Colors.teal[300] : Colors.blue[600]),
      ),
      leading: Padding(
        padding: const EdgeInsets.all(10),
        child: Image.asset("images/logo.png"),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(icon),
          onPressed: () {
            setState(() {
              if (icon == Icons.brightness_3) {
                icon = Icons.wb_sunny;
                enableDarkMode = true;
              } else {
                icon = Icons.brightness_3;
                enableDarkMode = false;
              }
              Provider.of<ThemeModifier>(context, listen: false).setTheme();
            });
          },
        ),
      ],
    );
  }
}
