import 'package:fluix/Components/CustomAppBar.dart';
import 'package:fluix/Components/DashboardCard.dart';
import 'package:fluix/Screens/TypeList.dart';
import 'package:fluix/Utils/ScrollNotifier.dart';
import 'package:fluix/Utils/images.dart';
import 'package:fluix/Utils/listItems.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  static final String path = "lib/Screens/Home";

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: CustomAppBar(),
        preferredSize: Size.fromHeight(56),
      ),
      body: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              spreadRadius: 2,
              blurRadius: 6,
              color: Colors.black.withOpacity(0 / 1))
        ]),
        child: ChangeNotifierProvider.value(
          value: ScrollNotifier(false),
          child: Builder(
            builder: (context) {
              var scrollListener = Provider.of<ScrollNotifier>(context);
              return NotificationListener<ScrollNotification>(
                onNotification: (notification) {
                  if (notification is ScrollStartNotification) {
                    scrollListener.isScrolling = true;
                  } else if (notification is ScrollEndNotification) {
                    scrollListener.isScrolling = false;
                  }
                  return true;
                },
                child: ListView.separated(
                  physics: BouncingScrollPhysics(),
                  separatorBuilder: (context, index) => SizedBox(
                    height: 10,
                  ),
                  itemCount: uiNames.length,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              TypeList(type: uiNames[index])));
                    },
                    child:
                        dashboardCard(uiNames[index], homeimgs[index], context),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
