import 'package:fluix/Components/Card1.dart';
import 'package:fluix/Components/CustomAppBar.dart';
import 'package:fluix/Utils/Theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/*TODO: PLEASE MAKE SURE TO IMPORT ALL THE PACKAGES & FILES AS SHOWN ABOVE YOU CAN REPLACE THE DEMO SCREENS WITH YOUR SCREEN*/


class CardDashboard extends StatelessWidget {
  static final String path = "lib/Dashboard/CardDashboard.dart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: CustomAppBar(),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.5,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                gradient: enableDarkMode ?
                  LinearGradient(colors: [Color(0xff272B2F), Color(0xff272B2F)]) :
                  LinearGradient(colors: [Colors.blueAccent, Colors.purple[300]],
                  // LinearGradient(colors: [Color(0xff7C8EF8), Color(0xff8F69FF)],
                  begin: Alignment.bottomLeft, end: Alignment.topRight
                ),
              ),
            ),
            Positioned(
              right: 0, top: 0,
              child: Container(
                width: MediaQuery.of(context).size.width*0.3,
                height: MediaQuery.of(context).size.height*0.2,
                decoration: BoxDecoration(
                  gradient: enableDarkMode ?
                    LinearGradient(colors: [Colors.teal[200], Colors.teal[300],]) :
                    LinearGradient(colors: [Color(0xffAA75FF), Colors.purple[300]],
                    begin: Alignment.bottomLeft, end: Alignment.topRight
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(200),
                    topLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(colors: [Colors.deepPurple, Colors.pink]),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: CircleAvatar(
                          radius: MediaQuery.of(context).size.height*0.05,
                          child: Icon(Icons.person, size: 60,),
                          backgroundColor: enableDarkMode ? Colors.black : Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text("John Mcdonald", style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.04, fontWeight: FontWeight.w600,),),
                    Text("Member since September 25th 2020", style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.02, fontWeight: FontWeight.w300,),),
                    SizedBox(height: 15,),
                    RaisedButton(
                      elevation: 20,
                      shape: RoundedRectangleBorder(side: BorderSide(color: Colors.amberAccent, width: 3), borderRadius: BorderRadius.circular(40)),
                      onPressed: () {
                        /*TODO: add functionality here*/
                      },
                      child: Text("Share Account", style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.025, fontWeight: FontWeight.w600,),),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        card1(Icons.local_grocery_store, "Shopping", context, Colors.blue),
                        card1(FontAwesomeIcons.car, "Travelling", context, Colors.purple),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        card1(FontAwesomeIcons.solidHeart, "Dates", context, Colors.orange),
                        card1(Icons.shopping_basket, "Groceries", context, Colors.green),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        card1(Icons.graphic_eq, "Stats", context, Colors.deepPurple),
                        card1(Icons.credit_card, "Cards", context, Colors.pink),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}