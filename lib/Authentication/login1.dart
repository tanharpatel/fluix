import 'package:cached_network_image/cached_network_image.dart';
import 'package:fluix/Components/Roundedbtn.dart';
import 'package:fluix/Components/TextFormField.dart';
import 'package:fluix/Utils/Theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fluix/Utils/constants.dart';

/*TODO: PLEASE MAKE SURE TO IMPORT ALL THE PACKAGES & FILES AS SHOWN ABOVE YOU CAN REPLACE THE DEMO SCREENS WITH YOUR SCREEN*/

class Login1 extends StatefulWidget {
  static final String path = "lib/Authentication/login1.dart";
  @override
  _Login1State createState() => _Login1State();
}

class _Login1State extends State<Login1> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: screenSize.height,
          child: CachedNetworkImage(
              imageUrl: imagesSource[0],
              imageBuilder: (context, imageProvider) => Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                        colorFilter: new ColorFilter.mode(
                            Colors.black.withOpacity(0.6), BlendMode.darken),
                      ),
                    ),
                  ),
              placeholder: (context, url) =>
                  Container(child: Center(child: CircularProgressIndicator())),
              errorWidget: (context, url, error) => new Center(
                    child: Icon(Icons.error),
                  )),
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
                  height: 70.0,
                  width: 70.0,
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
                          fontSize: screenSize.height / 30,
                          color: Colors.white,)),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Container(
            height: screenSize.height / 1.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40.0),
                topRight: Radius.circular(40.0),
              ),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top:screenSize.height/40,left: screenSize.width/10),
                  child: Text("New\nAccount",
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: screenSize.height / 30),
                      )),
                ),
                Container(
                  child: MyTextFormField(
                    hintText: "Email",
                    icon: Icons.email,
                    //TODO: Form can be used for this field check then customtextfile for the info
                    //TODO: save function ,validator ,is email and is password
                  ),
                ),
                Container(
                  child: MyTextFormField(
                    hintText: "Password",
                    icon: Icons.vpn_key,
                    isPassword: true,
                    //TODO: Form can be used for this field check then customtextfile for the info
                    //TODO: save function ,validator ,is email and is password
                  ),
                ),
                Center(
                  child: Container(
                    width: screenSize.width / 1.2,
                    height: screenSize.height/30,
                    child: InkWell(
                      child: Text(
                        "Forget Password ?",
                        style: TextStyle(
                          color: Colors.deepOrangeAccent,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:10.0),
                  child: Center(
                      child: RoundedButton(
                    onPressed: null,
                    title: "Authentication",
                    colour: Colors.deepOrangeAccent,
                  )),
                ),
                Center(
                    child: Text(
                  "Or Sign In With",
                  style: TextStyle(fontSize: 12.0, color: Colors.black)
                )),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child: Container(
                          height: 30.0,
                          width: 30.0,
                          child: Image.asset("images/google_logo.png"),
                        ),
                        onTap: () {
                          print('Google sign in');
                        },
                      ),
                      SizedBox(width: screenSize.width / 10),
                      GestureDetector(
                        child: Container(
                          height: 30.0,
                          width: 30.0,
                          child: Image.asset("images/facebook_logo.png"),

                        ),
                        onTap: () {
                          print('Facebook sign in');
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
