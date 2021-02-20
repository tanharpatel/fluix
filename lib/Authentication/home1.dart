import 'package:cached_network_image/cached_network_image.dart';
import 'package:fluix/Components/Roundedbtn.dart';
import 'package:fluix/Utils/constants.dart';
import 'package:fluix/Authentication/Login1.dart';
import 'package:fluix/Authentication/SignUp1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/*TODO: PLEASE MAKE SURE TO IMPORT ALL THE PACKAGES & FILES AS SHOWN ABOVE YOU CAN REPLACE THE DEMO SCREENS WITH YOUR SCREEN*/

class Home1 extends StatefulWidget {
  static final String path = 'lib/Authentication/home1.dart';
  @override
  _Home1State createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(children: [
        Container(
          height: screenSize.height,
          width: screenSize.width,
          child: CachedNetworkImage(
            imageUrl: imagesSource[0],
            imageBuilder: (context, imageProvider) => Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.fill,
                      colorFilter: new ColorFilter.mode(
                          Colors.black.withOpacity(0.6), BlendMode.darken))),
            ),
            placeholder: (context, url) =>
                Center(child: Container(child: CircularProgressIndicator())),
            errorWidget: (context, url, error) =>
                Center(child: Icon(Icons.error)),
          ),
        ),
        Positioned(
          top: screenSize.height / 15,
          left: screenSize.width / 10,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: "logo",
                child: Container(
                  height: 100.0,
                  width: 100.0,
                  child: Image.asset("images/flutter_icon.png"),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Text(
                  "Enjoy The Trip \n With Me",
                  style: GoogleFonts.lato(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.0,
                          fontSize: screenSize.height / 20,
                          color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Center(
            child: Container(
              margin: EdgeInsets.only(bottom: screenSize.height / 10),
              child: Column(
                children: [
                  RoundedButton(
                    title: "Sign In",
                    onPressed: () => Navigator.of(context).pushNamed(Login1.path),
                    colour: Colors.deepOrangeAccent,
                    txtstyle: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  RoundedButton(
                    title: "Sign Up",
                    onPressed: () => Navigator.of(context).pushNamed(SignUp1.path),
                    colour: Colors.white,
                    txtstyle: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}