import 'package:fluix/Components/Card2.dart';
import 'package:fluix/Components/CustomAppBar.dart';
import 'package:flutter/material.dart';

class Dashboard2 extends StatelessWidget {
  static final String path = "lib/Dashboard/Dashboard2.dart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: CustomAppBar(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              card2("Total Orders", "2054", context, Colors.blue, Colors.lightBlueAccent),
              card2("Order Received", "1834", context, Colors.pink, Colors.purple),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              card2("Order Delivered", "1656", context, Colors.amber, Colors.yellow[300]),
              card2("New Customers", "888", context, Colors.green, Colors.greenAccent),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Todays", style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.03, fontWeight: FontWeight.w700)),
              Text("This Week", style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.03, fontWeight: FontWeight.w400)),
            ],
          ),
          customRow("Total Orders", "2054", context),
          customRow("Order Received", "425", context),
          customRow("Order Delivered", "415", context),
          customRow("New Customers", "88", context),
        ],
      ),
    );
  }
}

Widget customRow(String label, String label2, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label, style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.025,)),
            Text(label2, style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.025,)),
          ],
        ),
      ),
    ),
  );
}