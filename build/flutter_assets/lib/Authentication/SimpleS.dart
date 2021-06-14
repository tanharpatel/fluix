import 'package:fluix/Authentication/Simple.dart';
import 'package:fluix/Components/Raisedbtn.dart';
import 'package:fluix/Components/TextField.dart';
import 'package:fluix/Utils/Theme.dart';
import 'package:flutter/material.dart';

/*TODO: PLEASE MAKE SURE TO IMPORT ALL THE PACKAGES & FILES AS SHOWN ABOVE YOU CAN REPLACE THE DEMO SCREENS WITH YOUR SCREEN*/

class SimpleS extends StatefulWidget {
  static final String path = "lib/Authentication/SimpleS.dart";

  @override
  _SimpleSState createState() => _SimpleSState();
}

class _SimpleSState extends State<SimpleS> {
  FocusNode nameFN, usernameFN, passwordFN, emailFN, soccodeFN;
  String name, username, password, email, soccode;

  @override
  void initState() {
    nameFN = FocusNode();
    usernameFN = FocusNode();
    passwordFN = FocusNode();
    emailFN = FocusNode();
    soccodeFN = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    nameFN.dispose();
    usernameFN.dispose();
    passwordFN.dispose();
    emailFN.dispose();
    soccodeFN.dispose();
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
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                  child: Text(
                "Let's Get Started!",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              )),
              SizedBox(
                height: 10,
              ),
              Center(
                  child: Text(
                "Create an account at FLUIX",
                style: TextStyle(color: Colors.grey),
              )),
              SizedBox(
                height: 60,
              ),
              GestureDetector(
                onTap: () {
                  FocusScope.of(context).requestFocus(nameFN);
                },
                child:
                    kTextField("Full Name", Icon(Icons.person), nameFN, name),
              ),
              SizedBox(
                height: 20,
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
                  FocusScope.of(context).requestFocus(emailFN);
                },
                child: kTextField("E-Mail", Icon(Icons.home), emailFN, email),
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
              kRaisedButton(150, "CREATE", () {}),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Already have an account? ",
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(Simple.path);
                    },
                    child: Text(
                      "Login here",
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
