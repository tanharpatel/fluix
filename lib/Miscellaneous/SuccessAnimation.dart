import 'package:flare_flutter/flare_actor.dart';
import "package:flutter/material.dart";

/* The animation success.flr is Made by Guido Rosso(co founder of RIVE)
The animation is copyrighted by Guido Rosso
link to license : https://creativecommons.org/licenses/by/4.0/ /*  */ *///

class SuccessAnimation extends StatefulWidget {
  static final String Path = "lib/Miscellaneous/SuccessAnimation.dart";

  @override
  _SuccessAnimationState createState() => _SuccessAnimationState();
}

class _SuccessAnimationState extends State<SuccessAnimation> {
  bool animate=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: FlareActor('images/success.flr', animation:  "Untitled" ),
    );
  }
}
