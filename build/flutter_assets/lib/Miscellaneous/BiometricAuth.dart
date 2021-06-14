import 'package:fluix/Components/CustomAppBar.dart';
import 'package:fluix/Components/Roundedbtn.dart';
import 'package:fluix/Utils/Theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';
import 'package:flutter/services.dart';

/*TODO: PLEASE MAKE SURE TO IMPORT ALL THE PACKAGES & FILES AS SHOWN ABOVE YOU CAN REPLACE THE DEMO SCREENS WITH YOUR SCREEN*/


class BiometricAuth extends StatefulWidget {
  static final String path = "lib/Miscellaneous/BiometricAuth.dart";
  @override
  _BiometricAuthState createState() => _BiometricAuthState();
}

class _BiometricAuthState extends State<BiometricAuth> {
  LocalAuthentication auth = new LocalAuthentication();
  bool _canCheckBiometrics;
  List<BiometricType> _availableBiometric = [];
  String _authorized = "Not Authorized";

  Future<void> _checkbiometrics() async {
    bool canCheckBiometrics;
    try{
      canCheckBiometrics = await auth.canCheckBiometrics;
    } on PlatformException catch(e){
      print(e);
    }
    if(!mounted) return;
    setState(() {
      _canCheckBiometrics = canCheckBiometrics;
    });
  }

  Future<void> _getAvailableBiometrics() async {
    List<BiometricType> availableBiometric = [];
    try{
     /* the function getAvailableBiometrics() is only for API LEVEL 29 , In case of API LEVEL less than 29 USE authenticateWithBiometrics(). it will return error*/
       /*if no hardware is found*/
      availableBiometric = await auth.getAvailableBiometrics();
    } on PlatformException catch(e){
      print(e);
    }

    if(!mounted) return;
    setState(() {
      _availableBiometric = availableBiometric;
    });

  }

  Future<void> _autenticateBiometric() async{
    bool authenticated=false;
    try{
      authenticated = await auth.authenticateWithBiometrics(localizedReason:
      "Use your Biometric",
      useErrorDialogs: true,
      stickyAuth: false);
    } on PlatformException catch(e){
      print(e);
    }

    if(!mounted) return;

    setState(() {
      _authorized = authenticated ? "Authorized" : "Not Authorized";
    });



  }
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
          child: CustomAppBar(title: "Biometric check",)),
      body: Center(
        child: Container(
          height: screenHeight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              RoundedButton(onPressed: _checkbiometrics,title: "Check support",colour: Colors.blue,txtstyle: TextStyle(color: Colors.white),),
              Text("Biometric Support Available: $_canCheckBiometrics"),

              RoundedButton(onPressed: _getAvailableBiometrics,title: "Get Biometric types",colour: Colors.blue,txtstyle: TextStyle(color: Colors.white),),
              Text("List Biometric: $_availableBiometric"),

              RoundedButton(onPressed: _autenticateBiometric,title: "Authenticate",colour: Colors.blue,txtstyle: TextStyle(color: Colors.white),),
              Text("Auth with Biometric: $_authorized"),

            ],
          ),
        ),
      ),
    );

  }
}
