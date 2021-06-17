import 'package:cached_network_image/cached_network_image.dart';
import 'package:fluix/Utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';

/*TODO: PLEASE MAKE SURE TO IMPORT ALL THE PACKAGES & FILES AS SHOWN ABOVE YOU CAN REPLACE THE DEMO SCREENS WITH YOUR SCREEN*/


class IntroSlider3 extends StatelessWidget {
  static final String path = "lib/IntroSliders/IntroSlider3.dart";
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    List<PageViewModel> pages = [
    /*  //Page no 1*/
      PageViewModel(
          pageColor: Colors.red,

          body: Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
          ),
          title: Text("Google"),
          titleTextStyle: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),
          bodyTextStyle: TextStyle(color: Colors.white,fontSize: screenHeight/45,fontWeight: FontWeight.w300),
          mainImage: CachedNetworkImage(
            imageUrl: profilePics[4],
            alignment: Alignment.center,
          )

      ),

      PageViewModel(
          pageColor: Colors.purple,

          body: Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
          ),
          title: Text("Google"),
          titleTextStyle: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),
          bodyTextStyle: TextStyle(color: Colors.white,fontSize: screenHeight/45,fontWeight: FontWeight.w300),
          mainImage: CachedNetworkImage(
            imageUrl: profilePics[1],
            alignment: Alignment.center,
          )

      ),

      PageViewModel(
        pageColor: Colors.green,

        body: Text(
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
        ),
        title: Text("Google"),
        titleTextStyle: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(color: Colors.white,fontSize: screenHeight/45,fontWeight: FontWeight.w300),
        mainImage: CachedNetworkImage(
          imageUrl: profilePics[5],
          alignment: Alignment.center,
        )

      ),
    ];
    return Scaffold(
      body: IntroViewsFlutter(
          pages,
        onTapNextButton: (){
         /*   //NEXT funciton goes here*/
        },
        showNextButton: true,
        showSkipButton: true,
        onTapSkipButton: (){
           /* //TODO //SKIP funciton goes here*/
        },
        pageButtonTextStyles: TextStyle(color:Colors.white,fontSize: 18.0,),
      ),


    );
  }


}
