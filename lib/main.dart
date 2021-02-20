import 'dart:async';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:fluix/Authentication/AnimatedLogin.dart';
import 'package:fluix/Authentication/AnimatedSignUp.dart';
import 'package:fluix/Authentication/Login1.dart';
import 'package:fluix/Authentication/Login2.dart';
import 'package:fluix/Authentication/SignUp1.dart';
import 'package:fluix/Authentication/SignUp2.dart';
import 'package:fluix/Authentication/Signup4.dart';
import 'package:fluix/Authentication/Simple.dart';
import 'package:fluix/Authentication/SimpleS.dart';
import 'package:fluix/DemoScreens/DemoScreen1.dart';
import 'package:fluix/DemoScreens/DemoScreen2.dart';
import 'package:fluix/DemoScreens/DemoScreen3.dart';
import 'package:fluix/DemoScreens/DemoScreen4.dart';
import 'package:fluix/Screens/Home.dart';
import 'package:fluix/Utils/Theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() {
  runApp(
    DynamicTheme(
      defaultBrightness: Brightness.light,
      data: (brightness) => ThemeData(
        brightness: enableDarkMode ? Brightness.dark : Brightness.light,
      ),
      themedWidgetBuilder: (context, theme) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: enableDarkMode ? darkTheme(context) : lightTheme(context),
        initialRoute: '/',
        routes: {
          '/': (context) => Splash(),
          AnimatedLogin.path: (context) => AnimatedLogin(),
          AnimatedSignUp.path: (context) => AnimatedSignUp(),
          Login1.path: (context) => Login1(),
          SignUp1.path: (context) => SignUp1(),
          Login2.path: (context) => Login2(),
          SignUp2.path: (context) => SignUp2(),
          Simple.path: (context) => Simple(),
          SimpleS.path: (context) => SimpleS(),
          DemoScreen1.path: (context) => DemoScreen1(),
          DemoScreen2.path: (context) => DemoScreen2(),
          DemoScreen3.path: (context) => DemoScreen3(),
          DemoScreen4.path: (context) => DemoScreen4(),
          SignUp4.path:(context) => SignUp4()
        },
      ),
    ),
  );
}

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    Timer(Duration(seconds: 4), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Home()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth  = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height:screenHeight/2,
                width: screenWidth/2,
                child: FlareActor('images/flx_flare.flr', animation: "Unfold",)),
            SizedBox(height: 25,),
            Text("FLUIX", style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30),),
            SizedBox(height: 20,),
            SpinKitDualRing(color: Colors.lightBlue, size: 40,),
          ],
        ),
      ),
    );
  }
}