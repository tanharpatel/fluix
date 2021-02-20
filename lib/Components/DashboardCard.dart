import 'package:bordered_text/bordered_text.dart';
import 'package:fluix/Utils/ScrollNotifier.dart';
import 'package:fluix/Utils/Theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget dashboardCard(String text, String img, BuildContext context) {
  bool isScrolling = Provider.of<ScrollNotifier>(context).isScrolling;
  Size screenSize = MediaQuery.of(context).size;
  return Padding(
    padding: const EdgeInsets.only(left: 10, right: 10),
    child: TweenAnimationBuilder(
        tween: Tween(
            begin: isScrolling ? 0.0 : -0.2, end: isScrolling ? -0.2 : 0.0),
        duration: Duration(milliseconds: 400),
        builder: (_, double rotation, child) {
          return Transform(
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.1)
              ..rotateZ(rotation),
            alignment: Alignment.center,
            child: Container(
              height: 200,
              width: double.maxFinite,
              child: Card(
                elevation: 15,
                color: enableDarkMode ? Color(0xff1C2939) : Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: enableDarkMode ? Colors.teal[200] : Colors.black,
                    width: 5,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Opacity(
                            opacity: 0.6,
                            child: Container(

                              child: FittedBox(
                                fit: BoxFit.fitWidth,

                                child: FadeInImage.assetNetwork(
                                  placeholder: "images/logo.png",
                                  image: img,
                                  height: screenSize.height/4,
                                  width: screenSize.width*0.1,
                                ),
                              ),
                            )),
                      ),
                    ),
                    Positioned(
                      left: 15,
                      bottom: 20,
                      child: BorderedText(
                        strokeWidth: 5,
                        strokeColor: enableDarkMode
                            ? Colors.white.withOpacity(0.75)
                            : Colors.black,
                        child: Text(
                          text,
                          style: TextStyle(
                            color: enableDarkMode ? Colors.black : Colors.white,
                            fontSize: 30,
                            fontFamily: "Dosis",
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        }),
  );
}
