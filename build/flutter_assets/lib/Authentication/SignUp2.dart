import 'package:fluix/Authentication/Login2.dart';
import 'package:flutter/material.dart';

/*
/*TODO: PLEASE MAKE SURE TO IMPORT ALL THE PACKAGES & FILES AS SHOWN ABOVE YOU CAN REPLACE THE DEMO SCREENS WITH YOUR SCREEN*/
*/

class SignUp2 extends StatefulWidget {
  static final String path = "lib/Authentication/SignUp2.dart";
                              
  @override
  _SignUp2State createState() => _SignUp2State();
}

class _SignUp2State extends State<SignUp2> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: CustomPaint(
        painter: BackgroundSignup(),
        child: Stack(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0),
            child: Column(
              children: [
                _getWelcomeText(screenSize),
                _getTextFields(screenSize),
                _signInbar(screenSize),
                _bottombar(screenSize, context)
              ],
            ),
          ),
        ]),
      ),
    );
  }

  _bottombar(Size screenSize, BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            child: Text(
              "Sign in",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline,
                  color: Colors.white),
            ),
            onTap: () => Navigator.of(context).pushNamed(Login2.path),
          ),
        ],
      ),
    );
  }

  _signInbar(Size screenSize) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Sign Up",
          style: TextStyle(
              fontSize: screenSize.aspectRatio * 50,
              fontWeight: FontWeight.w500,
              color: Colors.white),
        ),
        CircleAvatar(
          backgroundColor: Colors.grey.shade800,
          radius: 40,
          child: Icon(
            Icons.arrow_forward,
            color: Colors.white,
          ),
        )
      ],
    );
  }

  _getWelcomeText(Size screenSize) {
    return Expanded(
      flex: 2,
      child: Container(
        alignment: Alignment.bottomLeft,
        child: Text(
          "Create\nAccount",
          style:
              TextStyle(color: Colors.white, fontSize: screenSize.height / 21),
        ),
      ),
    );
  }

  _getTextFields(Size screenSize) {
    return Flexible(
      flex: 6,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: screenSize.height / 50,
          ),
          TextField(
            decoration: InputDecoration(
                labelText: 'Name',
                labelStyle: TextStyle(color: Colors.white),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white))),
          ),
          SizedBox(
            height: screenSize.height / 50,
          ),
          TextField(
            decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(color: Colors.white),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white))),
          ),
          SizedBox(
            height: screenSize.height / 50,
          ),
          TextField(
            decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.white),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white))),
          ),
          SizedBox(
            height: screenSize.height / 50,
          ),
        ],
      ),
    );
  }
}

class BackgroundSignup extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var sw = size.width;
    var sh = size.height;
    var paint = Paint();

    Path mainBackground = Path();
    mainBackground.addRect(Rect.fromLTRB(0, 0, sw, sh));
    paint.color = Colors.grey.shade100;
    canvas.drawPath(mainBackground, paint);

    Path blueWave = Path();
    blueWave.lineTo(sw, 0);
    blueWave.lineTo(sw, sh * 0.65);
    blueWave.cubicTo(sw * 0.8, sh * 0.8, sw * 0.55, sh * 0.8, sw * 0.45, sh);
    blueWave.lineTo(0, sh);
    paint.color = Colors.lightBlue.shade300;
    canvas.drawPath(blueWave, paint);

    Path greyWave = Path();
    greyWave.lineTo(sw, 0);
    greyWave.lineTo(sw, sh * 0.3);
    greyWave.cubicTo(sw * 0.65, sh * 0.45, sw * 0.25, sh * 0.35, 0, sh * 0.5);
    greyWave.close();
    paint.color = Colors.grey.shade800;
    canvas.drawPath(greyWave, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return oldDelegate != this;
  }
}
