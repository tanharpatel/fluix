import 'package:fluix/Components/Roundedbtn.dart';
import 'package:fluix/Components/TextFormField.dart';
import 'package:fluix/Utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:google_fonts/google_fonts.dart';

/*TODO: PLEASE MAKE SURE TO IMPORT ALL THE PACKAGES & FILES AS SHOWN ABOVE YOU CAN REPLACE THE DEMO SCREENS WITH YOUR SCREEN*/

class SignUp1 extends StatefulWidget {
  static final String path = "lib/Authentication/signUp1.dart";

  @override
  _SignUp1State createState() => _SignUp1State();
}

class _SignUp1State extends State<SignUp1> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: screenSize.height,
        child: Stack(
          children: [
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
                                    Colors.black.withOpacity(0.6),
                                    BlendMode.darken))),
                      ),
                  placeholder: (context, url) => Container(
                        child: Center(child: CircularProgressIndicator()),
                      ),
                  errorWidget: (context, url, error) => new Icon(Icons.error)),
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
                        child: Image.asset("images/logo.png"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: screenSize.height / 20),
                      child: Text(
                        "Enjoy The Trip \n With Me",
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.0,
                          fontSize: screenSize.height / 30,
                          color: Colors.white)),
                      ),
                    )
                  ]),
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
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(screenSize.height / 20),
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
                          hintText: "Username",
                          icon: Icons.person_pin,
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
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Center(
                            child: RoundedButton(
                          onPressed: () {
                            //TODO: signup process here
                          },
                          title: "Sign up",
                          colour: Colors.deepOrangeAccent,
                        )),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
