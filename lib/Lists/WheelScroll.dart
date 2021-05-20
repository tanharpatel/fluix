import 'package:fluix/Components/CustomAppBar.dart';
import 'package:flutter/material.dart';

/*TODO: PLEASE MAKE SURE TO IMPORT ALL THE PACKAGES & FILES AS SHOWN ABOVE YOU CAN REPLACE THE DEMO SCREENS WITH YOUR SCREEN*/

class WheelScroll extends StatefulWidget {
  static final String path = "lib/Lists/WheelScroll.dart";
  @override
  _WheelScrollState createState() {
    return _WheelScrollState();
  }
}

class _WheelScrollState extends State<WheelScroll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:PreferredSize(
        child: CustomAppBar(),
        preferredSize: Size.fromHeight(56),
      ),
      body: Center(
        child: ListWheelScrollView(
          itemExtent:
              250, /*// used to set the size of each item in the main axis.*/
          useMagnifier: true,
          physics: FixedExtentScrollPhysics(),
          diameterRatio:
              4.0, /*//The diameter of the cylinder can be set using diameterRatio property value.*/
          squeeze: 2.0,
          perspective: 0.01,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Center(
                child: Text(
                  'Digital\nMarketing',
                  style: TextStyle(fontSize: 45, color: Colors.black),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Center(
                child: Text(
                  'IT\nSoftware',
                  style: TextStyle(fontSize: 45, color: Colors.black),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Center(
                child: Text(
                  'Finance and\nAccounting',
                  style: TextStyle(fontSize: 45, color: Colors.black),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Center(
                child: Text(
                  'Photography',
                  style: TextStyle(fontSize: 45, color: Colors.black),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Center(
                child: Text(
                  'Web Development',
                  style: TextStyle(fontSize: 45, color: Colors.black),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.brown,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Center(
                child: Text(
                  'App Development',
                  style: TextStyle(fontSize: 45, color: Colors.black),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Center(
                child: Text(
                  'Machine Learning',
                  style: TextStyle(fontSize: 45, color: Colors.black),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Center(
                child: Text(
                  'Deep Learning',
                  style: TextStyle(fontSize: 45, color: Colors.black),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Center(
                child: Text(
                  'Digital\nMarketing',
                  style: TextStyle(fontSize: 45, color: Colors.black),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Center(
                child: Text(
                  'IT\nSoftware',
                  style: TextStyle(fontSize: 45, color: Colors.black),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Center(
                child: Text(
                  'Finance and/nAccounting',
                  style: TextStyle(fontSize: 45, color: Colors.black),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Center(
                child: Text(
                  'Photography',
                  style: TextStyle(fontSize: 45, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}