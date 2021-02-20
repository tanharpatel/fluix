import 'package:fluix/Utils/Theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fluid_slider/flutter_fluid_slider.dart';

/*TODO: PLEASE MAKE SURE TO IMPORT ALL THE PACKAGES & FILES AS SHOWN ABOVE YOU CAN REPLACE THE DEMO SCREENS WITH YOUR SCREEN*/


class AwesomeFluidSlider extends StatefulWidget {
  static final String path = "lib/Miscellaneous/AwesomeFluidSlider.dart";

  @override
  _AwesomeFluidSliderState createState() => _AwesomeFluidSliderState();
}

class _AwesomeFluidSliderState extends State<AwesomeFluidSlider> {
  double _value=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FluidSlider(
              value: _value,
              onChanged: (double newValue){
                setState(() {
                  _value = newValue;
                });
              },
              min: 0,
              max: 100,
              showDecimalValue: false,
              valueTextStyle: TextStyle(color: Colors.black),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text("Current value is:",style: TextStyle(fontSize: 20.0,color: enableDarkMode ? Colors.white:Colors.black),textAlign: TextAlign.center,),
            SizedBox(height: 10.0,),
            Text("$_value",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),)

          ],
        ),
      ),
    );
  }
}
