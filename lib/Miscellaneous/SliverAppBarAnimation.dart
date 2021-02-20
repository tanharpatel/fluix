import 'package:fluix/Utils/Theme.dart';
import 'package:flutter/material.dart';

/*TODO: PLEASE MAKE SURE TO IMPORT ALL THE PACKAGES & FILES AS SHOWN ABOVE YOU CAN REPLACE THE DEMO SCREENS WITH YOUR SCREEN*/


class SliverAppBarAnimation extends StatefulWidget {
  static final String path = "lib/Miscellaneous/SliverAppBarAnimation.dart";
  @override
  _SliverAppBarAnimationState createState() => _SliverAppBarAnimationState();
}

class _SliverAppBarAnimationState extends State<SliverAppBarAnimation> {
  ScrollController _scrollController = ScrollController();
  Color appBarBackground;
  double topPosition;
  @override
  void initState() {
    topPosition = -80;
    appBarBackground = Colors.transparent;
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  double _getOpacity() {
    double op = (topPosition + 80) / 80;
    return op > 1 || op < 0 ? 1 : op;
  }

  _onScroll() {
    if (_scrollController.offset > 50) {
      if (topPosition < 0)
        setState(() {
          topPosition = -130 + _scrollController.offset;
          if (_scrollController.offset > 130) topPosition = 0;
        });
    } else {
      if (topPosition > -80)
        setState(() {
          topPosition--;
          if (_scrollController.offset <= 0) topPosition = -80;
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: <Widget>[
                Container(
                  padding:  EdgeInsets.only(left: screenWidth/30, right: screenWidth/15),
                  height: screenHeight / 4.5,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: enableDarkMode ? Colors.teal:Colors.blue  ,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SizedBox(height: screenHeight/12),
                      Text(
                        "SliverApp Bar Hiding Aweosme Animation ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24.0,color: Colors.white),
                      ),
                       SizedBox(height: screenHeight/40),
                      Text(
                        "AWESOME",
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange),
                      )
                    ],
                  ),
                ),
                 SizedBox(height: screenHeight/40),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: screenHeight/3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      color: Color(0xff031148),
                    ),
                  ),
                ),

                 SizedBox(height: screenHeight/40),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: screenHeight/3,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      color: Colors.pink,
                    ),
                  ),
                ),

                SizedBox(height: screenHeight/40),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: screenHeight/3,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      color: Colors.purple,
                    ),
                  ),
                ),


                SizedBox(height: screenHeight/40),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: screenHeight/3,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      color: Colors.deepOrangeAccent,
                    ),
                  ),
                ),

                 SizedBox(height: screenHeight/50),
              ],
            ),
          ),
          Positioned(
              top: topPosition,
              left: 0,
              right: 0,
              child: Container(

                height: 80,
                padding: const EdgeInsets.only(left: 50,top: 25.0,right: 20.0),
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(30.0)),
                  color: enableDarkMode ? Colors.teal.withOpacity(_getOpacity()) : Colors.blue.withOpacity(_getOpacity()),
                ),
                child: DefaultTextStyle(
                  style: TextStyle(),
                  softWrap: false,
                  overflow: TextOverflow.ellipsis,
                  child: Semantics(
                    child: Text(
                      'Sliver App Bar',
                      style: TextStyle(color: Colors.black, fontSize: 18.0,fontWeight: FontWeight.bold),
                    ),
                    header: true,

                  ),
                ),
              )
          ),
          SizedBox(
            height: 80,
            child: AppBar(
              iconTheme: IconThemeData(color: Colors.black),
              elevation: 0,
              backgroundColor: Colors.transparent,
            ),
          )
        ],
      ),
    );
  }
}