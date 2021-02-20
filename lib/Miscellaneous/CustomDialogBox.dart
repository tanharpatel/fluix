import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*TODO: PLEASE MAKE SURE TO IMPORT ALL THE PACKAGES & FILES AS SHOWN ABOVE YOU CAN REPLACE THE DEMO SCREENS WITH YOUR SCREEN*/


class CustomDialogAlert extends StatelessWidget {
  static final String path = "lib/Miscellaneous/CustomDialogBox.dart";
  CustomDialogAlert({this.title, this.desc, this.buttontxt, this.imagepath});
  final String title,desc,buttontxt,imagepath;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context){
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top:100,bottom: 16,left:16,right:16),
          margin: EdgeInsets.only(top:16),
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(17),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10.0,
                    offset: Offset(0.0,10.0)
                )
              ]
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(title, style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.w900),),

              SizedBox(height: 24.0,),

              Text(desc, style: TextStyle(fontSize: 15.0,fontWeight:FontWeight.w300),),

              SizedBox(height: 24.0,),

              Align(alignment: Alignment.bottomRight,
                child: FlatButton(
                  child: Text(buttontxt),
                  onPressed: (){
                    Navigator.pop(context);
                  },
                ),)
            ],
          ),
        ),
        Positioned(
          top:0,
          left: 16,
          right: 16,
          child: CircleAvatar(
            backgroundColor: Colors.blueAccent,
            radius: 50,
            backgroundImage: AssetImage(imagepath),
          ),
        )
      ],
    );
  }
}
