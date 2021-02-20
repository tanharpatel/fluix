import 'package:fluix/Utils/constants.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:liquid_swipe/page.dart';

class LiquidIntroSlider extends StatelessWidget {

  static final String path = "lib/IntroSliders/LiquidIntroSlider.dart";
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    List<Container> pgs = [
      Container(
        color: Colors.purple,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal:screenWidth/16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: CachedNetworkImage(imageUrl: profilePics[0],height: screenHeight/2.5, width: screenWidth/1.3,),
              ),
              SizedBox(height: screenHeight/30, ),
              Text("Connect\nHello World",style: GoogleFonts.concertOne(color: Colors.white,textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: screenHeight/25)),),
              SizedBox(height: screenHeight/25,),
              Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley",
                style: GoogleFonts.lato(color: Colors.white,textStyle: TextStyle(fontWeight: FontWeight.w400,letterSpacing: 1.0,wordSpacing: 2.0)),),

            ],
          ),
        ),
      ),

      Container(
        color: Colors.blue,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal:screenWidth/16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: CachedNetworkImage(imageUrl: profilePics[1],height: screenHeight/2.5, width: screenWidth/1.3,),
              ),
              SizedBox(height: screenHeight/30, ),
              Text("Hello\nGanesh Gaitonde",style: GoogleFonts.concertOne(color: Colors.white,textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: screenHeight/25)),),
              SizedBox(height: screenHeight/25,),
              Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley",
                style: GoogleFonts.lato(color: Colors.white,textStyle: TextStyle(fontWeight: FontWeight.w400,letterSpacing: 1.0,wordSpacing: 2.0)),),

            ],
          ),
        ),
      ),

      Container(
        color: Colors.yellow,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal:screenWidth/16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: CachedNetworkImage(imageUrl: profilePics[2],height: screenHeight/2.5, width: screenWidth/1.3,),
              ),
              SizedBox(height: screenHeight/30, ),
              Text("25 din\nPaisa Double",style: GoogleFonts.concertOne(color: Colors.white,textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: screenHeight/25)),),
              SizedBox(height: screenHeight/25,),
              Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley",
                style: GoogleFonts.lato(color: Colors.white,textStyle: TextStyle(fontWeight: FontWeight.w400,letterSpacing: 1.0,wordSpacing: 2.0)),),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(bottom:screenWidth/10,right: screenWidth/30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      GestureDetector(
                        child: Icon(
                          Icons.check,
                          color: Colors.white,
                          size: 30,
                        ),
                        onTap: (){
                          ///Your Activity goes here
                          },
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      )
    ];

    return Scaffold(
      body: LiquidSwipe(
        pages: pgs
      ),
    );
  }
}


