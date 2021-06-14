import 'package:fluix/Components/CustomAppBar.dart';
import 'package:fluix/Components/Roundedbtn.dart';
import 'package:fluix/DemoScreens/DemoScreen1.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

/*TODO: PLEASE MAKE SURE TO IMPORT ALL THE PACKAGES & FILES AS SHOWN ABOVE YOU CAN REPLACE THE DEMO SCREENS WITH YOUR SCREEN*/


class PagesTransitions extends StatefulWidget {
  static final String path = "lib/Miscellaneous/PagesTransitions.dart";
  @override
  _PagesTransitionsState createState() => _PagesTransitionsState();
}

class _PagesTransitionsState extends State<PagesTransitions> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: CustomAppBar(),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: [
              RoundedButton(
                title: "Fade",
                colour: Colors.blue,
                onPressed: (){
                  Navigator.push(context,PageTransition(type: PageTransitionType.fade,child: DemoScreen1()));
                },
                txtstyle: TextStyle(color: Colors.white),
              ),

              RoundedButton(
                title: "Left to Right",
                colour: Colors.blue,
                onPressed: (){
                  Navigator.push(context,PageTransition(type: PageTransitionType.leftToRight,child: DemoScreen1()));
                },
                txtstyle: TextStyle(color: Colors.white),
              ),

              RoundedButton(
                title: "Right to Left",
                colour: Colors.blue,
                onPressed: (){
                  Navigator.push(context,PageTransition(type: PageTransitionType.rightToLeft,child: DemoScreen1()));
                },
                txtstyle: TextStyle(color: Colors.white),
              ),

              RoundedButton(
                title: "Rotate",
                colour: Colors.blue,
                onPressed: (){
                  Navigator.push(context,PageTransition(type: PageTransitionType.rotate,duration: Duration(seconds:1),child: DemoScreen1()));
                },
                txtstyle: TextStyle(color: Colors.white),
              ),

              RoundedButton(
                title: "Scale",
                colour: Colors.blue,
                onPressed: (){
                  Navigator.push(context,PageTransition(type: PageTransitionType.scale,alignment: Alignment.bottomCenter,child: DemoScreen1()));
                },
                txtstyle: TextStyle(color: Colors.white),
              ),

              RoundedButton(
                title: "Right to left with Fade",
                colour: Colors.blue,
                onPressed: (){
                  Navigator.push(context,PageTransition(type: PageTransitionType.rightToLeftWithFade,child: DemoScreen1()));
                },
                txtstyle: TextStyle(color: Colors.white),
              ),

              RoundedButton(
                title: "Left to right with Fade",
                colour: Colors.blue,
                onPressed: (){
                  Navigator.push(context,PageTransition(type: PageTransitionType.leftToRightWithFade,child: DemoScreen1()));
                },
                txtstyle: TextStyle(color: Colors.white),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
