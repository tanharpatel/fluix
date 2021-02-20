import 'package:flutter/material.dart';

Widget card4(String amount, String aNo, BuildContext context, Color color) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
    child: Container(
      child: Card(
        color: color,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Available Balance", style: Theme.of(context).textTheme.subtitle2.merge(TextStyle(color: Colors.white))),
                    SizedBox(height: 10,),
                    Text(amount, style: Theme.of(context).textTheme.headline6.merge(TextStyle(color: Colors.white))),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 20, right: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Account Number", style: Theme.of(context).textTheme.subtitle2.merge(TextStyle(color: Colors.white))),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(aNo, style: Theme.of(context).textTheme.subtitle1.merge(TextStyle(color: Colors.white))),
                        Text("VISA", style: Theme.of(context).textTheme.headline6.merge(TextStyle(color: Colors.white))),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}