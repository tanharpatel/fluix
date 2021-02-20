import 'package:flutter/material.dart';

class FormBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey,
            blurRadius: 20,
          )
        ],
      ),
      child: buildStack(context),
    );
  }

  Widget buildStack(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      children: <Widget>[
        Container(color: Color(0xFF36BA7A), height: 5),
        Column(
          children: <Widget>[
            SizedBox(height: 35),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Center(
                child: Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_circle, color: Colors.black),
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.black, fontSize: 14),
                    fillColor: Colors.black),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.security, color: Colors.black),
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.black, fontSize: 14),
                    fillColor: Colors.black),
              ),
            ),
          ],
        ),
        Positioned(
          top: 270,
          left: MediaQuery.of(context).size.width * .45,
          child: FloatingActionButton(
            onPressed: () {
              //TODO: login process here
            },
            heroTag: 'logintag',
            backgroundColor: Color(0xFF36BA7A),
            child: Icon(Icons.arrow_forward_ios),
          ),
        ),
      ],
    );
  }
}
