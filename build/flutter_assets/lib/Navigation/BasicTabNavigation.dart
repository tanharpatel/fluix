import 'package:fluix/DemoScreens/DemoScreen1.dart';
import 'package:fluix/DemoScreens/DemoScreen2.dart';
import 'package:flutter/material.dart';

import 'package:fluix/DemoScreens/DemoScreen3.dart';
 class BasicTabNavigation extends StatelessWidget {
   static final String path = "lib/Navigation/BasicTabNavigation.dart";
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       home: DefaultTabController(length: 3,
       child: Scaffold(
         appBar: AppBar(
           title: Text("Basic Navigation bar"),
           bottom: TabBar(
             indicator: BoxDecoration(
               borderRadius: BorderRadius.circular(100),
                 gradient: LinearGradient(
                   begin: Alignment.bottomRight,
                   end: Alignment.bottomLeft,
                   colors: [Color(0xff6D0EB5),Color(0xff4059F1)],

             )
             ),

             tabs: [
               Tab(text: "Page1",),
               Tab(text: "Page2",),
               Tab(text: "Page3",),
             ],
           ),
         ),
         body:TabBarView(
           children: [
             DemoScreen1(),
             DemoScreen2(),
             DemoScreen3(),
           ],
         )
       ),
       ),

     );
   }
 }
