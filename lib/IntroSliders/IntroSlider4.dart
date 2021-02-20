import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:nice_intro/intro_screen.dart';
import 'package:nice_intro/intro_screens.dart';

/*TODO: PLEASE MAKE SURE TO IMPORT ALL THE PACKAGES & FILES AS SHOWN ABOVE YOU CAN REPLACE THE DEMO SCREENS WITH YOUR SCREEN*/


class IntroSlider4 extends StatelessWidget {
  static final String path = "lib/IntroSliders/IntroSlider4.dart";
  @override
  Widget build(BuildContext context) {
    List<IntroScreen> screens=[
      IntroScreen(
        title: "Fries",
        imageAsset: "images/fries.png",
        description: "French Fries",
        headerBgColor: Colors.black12,
      ),

      IntroScreen(
        title: "Noodles",
        imageAsset: "images/noodles.png",
        description: "Hakka Noodles",
        headerBgColor: Colors.black12,
      ),

      IntroScreen(
        title: "Cheese Dip",
        imageAsset: "images/cheese_dip.png",
        description: "Cheese Dip",
        headerBgColor: Colors.black12,
      ),
    ];
    return Scaffold(
      body: IntroScreens(
        footerBgColor: Colors.blue[300],
        activeDotColor: Colors.black,
        footerRadius: 18.0,
        indicatorType: IndicatorType.CIRCLE,
        physics: BouncingScrollPhysics(),
        slides: screens,
      ),
    );
  }
}
