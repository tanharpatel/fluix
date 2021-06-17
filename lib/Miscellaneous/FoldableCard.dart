import 'package:flutter/material.dart';
import 'package:folding_cell/folding_cell.dart';

/*TODO: PLEASE MAKE SURE TO IMPORT ALL THE PACKAGES & FILES AS SHOWN ABOVE YOU CAN REPLACE THE DEMO SCREENS WITH YOUR SCREEN*/

class FoldableCard extends StatelessWidget {
  static final String path = "lib/Miscellaneous/FoldableCard.dart";
  final _foldingCellKey = GlobalKey<SimpleFoldingCellState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 400,
      color: Color(0xFF2e282a),
      child: SimpleFoldingCell.create(
          key: _foldingCellKey,
          frontWidget: _buildFrontWidget(context),
          innerWidget: _buildInnerTopWidget(context),
          cellSize: Size(MediaQuery.of(context).size.width,
              MediaQuery.of(context).size.height / 2),
          padding: EdgeInsets.all(15),
          animationDuration: Duration(milliseconds: 300),
          borderRadius: 10,
          onOpen: () => print('cell opened'),
          onClose: () => print('cell closed')),
    );
  }

  Widget _buildFrontWidget(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
        color: Color(0xFFffcd3c),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed: () => _foldingCellKey?.currentState?.toggleFold(),
              child: Text(
                "Press Me",
              ),
              textColor: Colors.white,
              color: Colors.indigoAccent,
              splashColor: Colors.white.withOpacity(0.5),
            )
          ],
        ));
  }

  Widget _buildInnerTopWidget(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: screenSize.height * 0.9,
          width: screenSize.width,
          color: Color(0xFFecf2f9),
          child: Column(children: [
            Container(
                color: Color(0xFFff9234),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: screenSize.height / 6,
                      child: Image.asset("images/fries.png"),
                    ),
                    Container(
                      height: screenSize.height / 4,
                      color: Colors.white,
                      child: Image.asset("images/pizza.png"),
                    ),
                  ],
                )),
            SizedBox(
              height: screenSize.height / 14,
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: FlatButton(
                onPressed: () => _foldingCellKey?.currentState?.toggleFold(),
                child: Text(
                  "Close",
                ),
                textColor: Colors.white,
                color: Colors.indigoAccent,
                splashColor: Colors.white.withOpacity(0.5),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}