import 'package:fluix/Authentication/SimpleS.dart';
import 'package:fluix/Components/Raisedbtn.dart';
import 'package:fluix/Components/TextField.dart';
import 'package:fluix/Utils/Theme.dart';
import 'package:flutter/material.dart';

/*
/*TODO: PLEASE MAKE SURE TO IMPORT ALL THE PACKAGES & FILES AS SHOWN ABOVE YOU CAN REPLACE THE DEMO SCREENS WITH YOUR SCREEN*/
*/

class Simple extends StatefulWidget {
  static final String path = "lib/Authentication/Simple.dart";

  @override
  _SimpleState createState() => _SimpleState();
}

class _SimpleState extends State<Simple> {
  FocusNode usernameFN, passwordFN;
  String username, password;

  @override
  void initState() {
    usernameFN = FocusNode();
    passwordFN = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    usernameFN.dispose();
    passwordFN.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Image.asset("images/logo.png", height: 200),
              SizedBox(
                height: 10,
              ),
              Center(
                  child: Text(
                "Welcome back!",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              )),
              SizedBox(
                height: 10,
              ),
              Center(
                  child: Text(
                "Log in to your existant account of FLUIX",
                style: TextStyle(color: Colors.grey),
              )),
              SizedBox(
                height: 60,
              ),
              GestureDetector(
                onTap: () {
                  FocusScope.of(context).requestFocus(usernameFN);
                },
                child: kTextField(
                    "Username", Icon(Icons.person), usernameFN, username),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  FocusScope.of(context).requestFocus(passwordFN);
                },
                child: kTextField(
                    "Password", Icon(Icons.vpn_key), passwordFN, password),
              ),
              SizedBox(
                height: 25,
              ),
              kRaisedButton(150, "LOG IN", () {}),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Don't have an account? ",
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(SimpleS.path);
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          color: enableDarkMode ? Colors.teal : Colors.blue, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
