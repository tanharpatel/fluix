import 'package:flutter/material.dart';

class Login5 extends StatefulWidget {
  static final String path = "lib/authentication/Login5.dart";
  @override
  _Login5State createState() => new _Login5State();
}

class _Login5State extends State<Login5> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView(
            children: <Widget>[
              SizedBox(height: 50),
              Align(alignment: Alignment.centerLeft, child: Text('Welcome\nBack', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold))),
              SizedBox(height: 10),
              Container(
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'EMAIL',
                        labelStyle: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black))),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'PASSWORD',
                        labelStyle: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black))),
                      obscureText: true,
                    ),
                    SizedBox(height: 10),
                    Container(
                      child: InkWell(
                        child: Text(
                          'Forgot Password',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                            decoration: TextDecoration.underline),
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    Container(
                      height: 40,
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        shadowColor: Colors.black,
                        color: Colors.black,
                        elevation: 7,
                        child: GestureDetector(
                          onTap: () {},
                          child: Center(
                            child: Text(
                              'LOGIN',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                       height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          style: BorderStyle.solid,
                          width: 1),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text('Log in with Google',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat')),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Don\'t have account?',
                    style: TextStyle(fontFamily: 'Montserrat'),
                  ),
                  SizedBox(width: 5),
                  GestureDetector(
                    onTap: () {Navigator.pushNamed(context, '/registration5');},
                    child: Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.blue,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}