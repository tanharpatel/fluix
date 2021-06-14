import 'package:fluix/Components/CustomAppBar.dart';
import 'package:fluix/Components/SlideAnimation.dart';
import 'package:flutter/material.dart';

/*TODO: PLEASE MAKE SURE TO IMPORT ALL THE PACKAGES & FILES AS SHOWN ABOVE YOU CAN REPLACE THE DEMO SCREENS WITH YOUR SCREEN*/

class SlideList extends StatefulWidget {
  static final String path = "lib/Lists/slidelist.dart";

  SlideList({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SlideListState createState() => _SlideListState();
}

class _SlideListState extends State<SlideList>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: CustomAppBar(),
        preferredSize: Size.fromHeight(56),
      ),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, _position) {
          return SlideAnimation(
            itemCount: 20,
            position: _position,
            slideDirection: SlideDirection.fromRight,
            animationController: _animationController,
            child: Container(
              padding: EdgeInsets.all(15),
              child: Text('Item $_position',
                  style: Theme.of(context).textTheme.headline6),
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
