import 'package:flutter/material.dart';

class Registration5 extends StatefulWidget {
  @override
  _Registration5State createState() => _Registration5State();
}

class _Registration5State extends State<Registration5> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView(
            children: <Widget>[
              SizedBox(height: 50),
              Align(alignment: Alignment.centerLeft, child: Text('Create\nAccount', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold))),
              SizedBox(height: 10),
              Container(
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'FULL NAME ',
                        labelStyle: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black))),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'EMAIL',
                        labelStyle: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black))),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'PASSWORD ',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black))),
                      obscureText: true,
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
                              'SIGNUP',
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
                    GestureDetector(
                      onTap: (){Navigator.of(context).pop();},
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            style: BorderStyle.solid,
                            width: 1),
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text('Go Back',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat')),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]
          ),
        ),
      ),
    );
  }
}