import 'package:fluix/Components/CustomAppBar.dart';
import 'package:fluix/Utils/Theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

/*TODO: PLEASE MAKE SURE TO IMPORT ALL THE PACKAGES & FILES AS SHOWN ABOVE YOU CAN REPLACE THE DEMO SCREENS WITH YOUR SCREEN*/

class AnimatedSignUp extends StatefulWidget {
  static final String path = "lib/Authentication/AnimatedSignUp.dart";
  @override
  _AnimatedSignUpState createState() => _AnimatedSignUpState();
}

class _AnimatedSignUpState extends State<AnimatedSignUp>
    with SingleTickerProviderStateMixin {
  Color _color1 = Color(0xFF36BA7A);
  Color _color2 = Colors.white;
  String _gender = 'male';

  AnimationController controller;
  Animation topAnimation1,
      topAnimation2,
      topAnimation3,
      bottomAnimation1,
      bottomAnimation2,
      bottomAnimation3,
      sideAnimation1,
      sideAnimation2;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );
    topAnimation1 = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: controller,
        curve: Interval(.5, 1.0, curve: Curves.fastOutSlowIn)));

    topAnimation2 = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: controller,
        curve: Interval(.7, 1.0, curve: Curves.fastOutSlowIn)));

    topAnimation3 = Tween(begin: -1.0, end: 0).animate(CurvedAnimation(
        parent: controller,
        curve: Interval(.9, 1.0, curve: Curves.fastOutSlowIn)));

    bottomAnimation1 = Tween(begin: 1.0, end: 0.0).animate(CurvedAnimation(
        parent: controller,
        curve: Interval(.5, 1.0, curve: Curves.fastOutSlowIn)));

    bottomAnimation2 = Tween(begin: 1.0, end: 0.0).animate(CurvedAnimation(
        parent: controller,
        curve: Interval(.7, 1.0, curve: Curves.fastOutSlowIn)));

    bottomAnimation3 = Tween(begin: 1.0, end: 0).animate(CurvedAnimation(
        parent: controller,
        curve: Interval(.9, 1.0, curve: Curves.fastOutSlowIn)));

    sideAnimation1 = Tween(begin: -1.0, end: 0.0).animate(
        CurvedAnimation(parent: controller, curve: Curves.bounceInOut));

    sideAnimation2 = Tween(begin: 1.0, end: 0).animate(
        CurvedAnimation(parent: controller, curve: Curves.bounceInOut));
  }

  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;
    controller.forward();
    return AnimatedBuilder(
        animation: controller,
        builder: (BuildContext context, Widget child) {
          return Scaffold(
            appBar: PreferredSize(
              child: CustomAppBar(),
              preferredSize: Size.fromHeight(56),
            ),
            body: ListView(
              shrinkWrap: true,
              children: <Widget>[
                SizedBox(height: 20),
                Transform(
                    transform: Matrix4.translationValues(
                        0, topAnimation3.value * _height, 0),
                    child: buildFirstText()),
                SizedBox(height: 20),
                Transform(
                    transform: Matrix4.translationValues(
                        0, topAnimation2.value * _height, 0),
                    child: buildNameColumn()),
                SizedBox(height: 20),
                Transform(
                  transform: Matrix4.translationValues(
                      0, topAnimation1.value * _height, 0),
                  child: buildGenderText(),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Transform(
                      transform: Matrix4.translationValues(
                          sideAnimation1.value * _width, 0, 0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            if (_gender == 'male')
                              _gender = 'female';
                            else
                              _gender = 'male';

                            _gender == 'male'
                                ? _color1 = Color(0xFF36BA7A)
                                : _color1 = Colors.white;
                            _gender == 'male'
                                ? _color2 = Colors.white
                                : _color2 = Color(0xFF36BA7A);
                          });
                        },
                        child: genderBox(
                            context, _color1, 'Male', 'images/male.png'),
                      ),
                    ),
                    Transform(
                      transform: Matrix4.translationValues(
                          sideAnimation2.value * _width, 0, 0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            if (_gender == 'male')
                              _gender = 'female';
                            else
                              _gender = 'male';

                            _gender == 'male'
                                ? _color1 = Color(0xFF36BA7A)
                                : _color1 = Colors.white;
                            _gender == 'male'
                                ? _color2 = Colors.white
                                : _color2 = Color(0xFF36BA7A);
                          });
                        },
                        child: genderBox(
                            context, _color2, 'Female', 'images/female.png'),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Transform(
                    transform: Matrix4.translationValues(
                        0, bottomAnimation1.value * _height, 0),
                    child: buildBorninText()),
                Transform(
                    transform: Matrix4.translationValues(
                        0, bottomAnimation2.value * _height, 0),
                    child: buildPickerContainer()),
                SizedBox(height: 20),
                Transform(
                    transform: Matrix4.translationValues(
                        0, bottomAnimation3.value * _height, 0),
                    child: buildNextButton())
              ],
            ),
          );
        });
  }

  Padding buildNextButton() {
    return Padding(
      padding: EdgeInsets.only(left: 80, right: 80),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        onPressed: () {
          //TODO: add interactivity here
        },
        child: Text(
          'NEXT',
          style: TextStyle(color: Colors.white),
        ),
        color: Color(0xFF36BA7A),
      ),
    );
  }

  Container buildPickerContainer() {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      height: 180,
      child: CupertinoTheme(
        data: CupertinoThemeData(
          textTheme: CupertinoTextThemeData(
              pickerTextStyle: TextStyle(
                  color: enableDarkMode ? Colors.white : Colors.black)),
        ),
        child: CupertinoDatePicker(
          mode: CupertinoDatePickerMode.date,
          onDateTimeChanged: (_) {},
          initialDateTime: DateTime(2019),
          maximumDate: DateTime(2030),
          minimumDate: DateTime(2000),
        ),
      ),
    );
  }

  Padding buildBorninText() {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: Text(
        'Born in',
        style: TextStyle(
          fontSize: 22,
          fontFamily: 'Quicksand',
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Padding buildGenderText() {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: Text(
        'Gender',
        style: TextStyle(
          fontSize: 22,
          fontFamily: 'Quicksand',
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Column buildNameColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Name',
            style: TextStyle(
              fontSize: 22,
              fontFamily: 'Quicksand',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: TextField(),
        ),
      ],
    );
  }

  Text buildFirstText() {
    return Text(
      'First things first!',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.grey,
        fontFamily: 'Quicksand',
        fontSize: 20,
      ),
    );
  }

  Widget genderBox(BuildContext context, Color color, String text, String img) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width * 0.42,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10,
            )
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            img,
            width: 70,
            height: 70,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 16,
              color: color == Color(0xFF36BA7A) ? Colors.white : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
