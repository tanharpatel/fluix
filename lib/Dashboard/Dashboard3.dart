import 'package:flutter/material.dart';
import 'package:fluix/Components/Card3.dart';
import 'package:fluix/Components/Card4.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Dashboard3 extends StatefulWidget {
  static final String path = "lib/DashBoard/DashBoard3.dart";
  @override
  _Dashboard3State createState() => _Dashboard3State();
}

class _Dashboard3State extends State<Dashboard3> {



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff130924),
        body: Column(
          children: [
            Container(
              color: Color(0xff130924),
              height: 80,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          child: Icon(Icons.person),
                        ),
                        SizedBox(width: 15),
                        Text("Hi, Lisa", style: TextStyle(color: Colors.white, fontSize: 18),),
                      ],
                    ),
                    IconButton(
                      icon: Icon(Icons.dashboard, color: Colors.white, size: 30,),
                      onPressed: () {}
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: ListView(
                      children: [
                        Expanded(
                          child: CarouselSlider(
                            options: CarouselOptions(
                              scrollPhysics: BouncingScrollPhysics(),
                              enableInfiniteScroll: false,
                              initialPage: 0,
                              height: MediaQuery.of(context).size.height*0.4,
                            ),
                            items: [
                              card4("\$80000", "4111 1111 1111 1111", context, Color(0xff3EC9DC)),
                              card4("\$290000", "4123 4567 8910 1112", context, Color(0xff531FDC)),
                              card4("\$140000", "4121 1109 8765 4321", context, Color(0xffE6344A)),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            card3(Icons.send, "Transfer", context, Color(0xff3DCADD)),
                            card3(Icons.account_balance_wallet, "Wallet", context, Color(0xff510AD9)),
                            card3(FontAwesomeIcons.ticketAlt, "Voucher", context, Color(0xffE63548)),
                          ],
                        ),
                        Row(
                          children: [
                            card3(Icons.receipt, "Pay Bill", context, Color(0xffF5B22B)),
                            card3(Icons.monetization_on, "Exchange", context, Color(0xff22CF9A)),
                            card3(Icons.more_horiz, "More", context, Color(0xff2A3FDD)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.1))
          ]),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
              child: GNav(
                  gap: 8,
                  activeColor: Colors.white,
                  iconSize: 24,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  duration: Duration(milliseconds: 800),
                  tabBackgroundColor: Colors.grey[800],
                  tabs: [
                    GButton(
                      icon: Icons.home,
                      text: 'Home',
                    ),
                    GButton(
                      icon: Icons.favorite_border,
                      text: 'Likes',
                    ),
                    GButton(
                      icon: Icons.notifications_outlined,
                      text: 'Notification',
                    ),
                    GButton(
                      icon: Icons.person_outline,
                      text: 'Profile',
                    ),
                  ],
                  selectedIndex: 0,
                  onTabChange: (index) {
                    setState((){
                      /*TODO: update the index of tab*/ 
                    }
                  );
                }
              ),
            ),
          ),
        ),
      ),
    );
  }
}