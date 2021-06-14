import 'package:fluix/Components/CustomAppBar.dart';
import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';
import 'package:argon_buttons_flutter/argon_buttons_flutter.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

/*TODO: PLEASE MAKE SURE TO IMPORT ALL THE PACKAGES & FILES AS SHOWN ABOVE YOU CAN REPLACE THE DEMO SCREENS WITH YOUR SCREEN*/


class AppleSliderButton extends StatelessWidget {
  static final String path = "lib/Miscellaneous/AppleSliderButton.dart";


  @override
  Widget build(BuildContext context) {
   final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: CustomAppBar(),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: screenHeight/15,),
              SliderButton(
                action: (){
                  Navigator.of(context).pop();
                },
                label: Text(
                  "Slide to go back!",
                  style: TextStyle(color: Color(0xff4a4a4a),fontWeight: FontWeight.bold,fontSize: 17),
                ),
                icon: Icon(Icons.power_settings_new,color: Colors.grey,)
              ),
              SizedBox(height: screenHeight/25,),
              Text("Argon Buttons",style: TextStyle(fontWeight: FontWeight.bold,fontSize: screenHeight/30),),
              Container(
                margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
                height: 1,
                color: Colors.black,
              ),
              SizedBox(height: screenHeight/20,),
              ArgonTimerButton(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.45,
                minWidth: MediaQuery.of(context).size.width * 0.30,
                highlightColor: Colors.transparent,
                highlightElevation: 0,
                roundLoadingShape: false,
                onTap: (startTimer, btnState) {
                  if (btnState == ButtonState.Idle) {
                    startTimer(5);
                  }
                },
               /* // initialTimer: 10,*/
                child: Text(
                  "Resend OTP",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
                loader: (timeLeft) {
                  return Text(
                    "Wait | $timeLeft",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  );
                },
                borderRadius: 5.0,
                color: Colors.transparent,
                elevation: 0,
                borderSide: BorderSide(color: Colors.black, width: 1.5),
              ),
              SizedBox(height: screenHeight/20,),
              ArgonTimerButton(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.45,
                onTap: (startTimer, btnState) {
                  if (btnState == ButtonState.Idle) {
                    startTimer(5);
                  }
                },
                child: Text(
                  "Resend OTP",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
                loader: (timeLeft) {
                  return Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                    margin: EdgeInsets.all(5),
                    alignment: Alignment.center,
                    width: 40,
                    height: 40,
                    child: Text(
                      "$timeLeft",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                  );
                },
                borderRadius: 5.0,
                color: Color(0xFF7866FE),
              ),
              SizedBox(height: screenHeight/20,),
              ArgonTimerButton(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.45,
                minWidth: MediaQuery.of(context).size.width * 0.30,
                highlightColor: Colors.transparent,
                highlightElevation: 0,
                roundLoadingShape: false,
                splashColor: Colors.transparent,
                onTap: (startTimer, btnState) {
                  if (btnState == ButtonState.Idle) {
                    startTimer(5);
                  }
                },
               /* // initialTimer: 10,*/
                child: Text(
                  "Resend OTP",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
                loader: (timeLeft) {
                  return Text(
                    "Wait | $timeLeft",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  );
                },
                borderRadius: 5.0,
                color: Colors.transparent,
                elevation: 0,
              ),
              SizedBox(height: screenHeight/20,),
              ArgonButton(
                height: 50,
                roundLoadingShape: true,
                width: MediaQuery.of(context).size.width * 0.45,
                onTap: (startLoading, stopLoading, btnState) {
                  if (btnState == ButtonState.Idle) {
                    startLoading();
                  } else {
                    stopLoading();
                  }
                },
                child: Text(
                  "SignUp",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
                loader: Container(
                  padding: EdgeInsets.all(10),
                  child: SpinKitRotatingCircle(
                    color: Colors.white,
                  /*  // size: loaderWidth ,*/
                  ),
                ),
                borderRadius: 5.0,
                color: Color(0xFFfb4747),
              ),
              SizedBox(height: screenHeight/20,),
              ArgonButton(
                height: 50,
                roundLoadingShape: false,
                width: MediaQuery.of(context).size.width * 0.45,
                minWidth: MediaQuery.of(context).size.width * 0.30,
                onTap: (startLoading, stopLoading, btnState) {
                  if (btnState == ButtonState.Idle) {
                    startLoading();
                  } else {
                    stopLoading();
                  }
                },
                child: Text(
                  "Continue",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
                loader: Text(
                  "Loading...",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
                borderRadius: 5.0,
                color: Color(0xFF7866FE),
              ),
            ],
          ),

        ),
      ),
    );
  }
}
