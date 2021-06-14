import 'package:cached_network_image/cached_network_image.dart';
import 'package:fluix/Components/TextField.dart';
import 'package:fluix/Utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

/*TODO: PLEASE MAKE SURE TO IMPORT ALL THE PACKAGES & FILES AS SHOWN ABOVE YOU CAN REPLACE THE DEMO SCREENS WITH YOUR SCREEN*/


class BankDashBoard extends StatelessWidget {
  static final String path = "lib/Dashboard/BankDashBoard.dart";
  @override
  Widget build(BuildContext context) {
    final screenHeight  = MediaQuery.of(context).size.height;
    final screenWidth  = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(screenHeight/12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
           SizedBox(height: double.infinity,),
            Padding(
              padding: EdgeInsets.only(left: screenWidth/20),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Color(0xffe6e4f9),
                child: Icon(LineAwesomeIcons.bars,size: 25,),
              ),
            ),
            Expanded(child: SizedBox()),
            CircleAvatar(
              radius: 20,
              backgroundColor: Color(0xffe6e4f9),
              child: Icon(LineAwesomeIcons.bell,size: 30,),
            ),
            SizedBox(width: 20,),
            CircleAvatar(
              radius: 25,
              backgroundColor: Color(0xffe6e4f9),
              backgroundImage: CachedNetworkImageProvider(
                profilePics[0]
              ),
            ),
            SizedBox(width: 20,),
          ],
        )
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal:screenWidth/20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            SizedBox(height: screenHeight/25,width: screenWidth,),

            Text("Welcome Back",style: GoogleFonts.lato(fontSize: screenHeight/40,color: Colors.black38),),

            Text("Creative Mints",style: GoogleFonts.lato(fontSize: screenHeight/25,color: Color(0xff1e0952)),),

            SizedBox(height: screenHeight/30,),

            kTextField("Search", Icon(LineAwesomeIcons.search), FocusNode(), "search"),

              SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Container(
                    height: screenHeight/6,
                    width: screenWidth/2.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.green,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.white,
                            child: Icon(LineAwesomeIcons.dollar,size:40,color: Colors.green,),
                          ),

                          Text("Transcaitons",style: GoogleFonts.lato(fontSize: screenHeight/50,fontWeight: FontWeight.bold,color: Colors.white),),
                          Text("7 items",style: GoogleFonts.lato(color: Colors.white),),

                        ],
                      ),
                    ),

                  ),
                ),

                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Container(
                    height: screenHeight/6,
                    width: screenWidth/2.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.red,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.white,
                            child: Icon(FontAwesomeIcons.piggyBank,size:30,color: Colors.red,),
                          ),

                          Text("Budget",style: GoogleFonts.lato(fontSize: screenHeight/50,fontWeight: FontWeight.bold,color: Colors.white),),
                          Text("4 items",style: GoogleFonts.lato(color: Colors.white),),

                        ],
                      ),
                    ),

                  ),
                ),
              ],
            ),

            SizedBox(height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Container(
                    height: screenHeight/6,
                    width: screenWidth/2.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.yellow[700],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.white,
                            child: Icon(LineAwesomeIcons.star,size:40,color: Colors.yellow[700],),
                          ),

                          Text("Recommend",style: GoogleFonts.lato(fontSize: screenHeight/50,fontWeight: FontWeight.bold,color: Colors.white),),
                          Text("5 items",style: GoogleFonts.lato(color: Colors.white),),

                        ],
                      ),
                    ),

                  ),
                ),
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Container(
                    height: screenHeight/6,
                    width: screenWidth/2.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.deepPurple,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.white,
                            child: Icon(LineAwesomeIcons.credit_card,size:40,color: Colors.deepPurple,),
                          ),

                          Text("Credit Card",style: GoogleFonts.lato(fontSize: screenHeight/50,fontWeight: FontWeight.bold,color: Colors.white),),
                          Text("3 items",style: GoogleFonts.lato(color: Colors.white),),

                        ],
                      ),
                    ),

                  ),
                ),
              ],
            ),

            Padding(
              padding:  EdgeInsets.symmetric(horizontal:20.0,vertical: 10.0),
              child: Text("Choose a category",style: GoogleFonts.lato(fontSize: screenHeight/33,color: Color(0xff1e0952)),),
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    side: BorderSide(color:Colors.black38,width: 1.0)
                  ),
                  child: Container(
                    height: screenHeight/10,
                    width: screenWidth/2.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.lightBlueAccent,
                          child: Icon(LineAwesomeIcons.bank,color: Colors.white,),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(left:8.0),
                          child: Text("Branch \n Services",style: GoogleFonts.lato(fontSize: screenHeight/50),),
                        )
                      ],
                    ),
                  ),
                ),

                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      side: BorderSide(color:Colors.black38,width: 1.0)
                  ),
                  child: Container(
                    height: screenHeight/10,
                    width: screenWidth/2.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [



                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.deepPurpleAccent,
                          child: Icon(LineAwesomeIcons.credit_card,color: Colors.white,),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(left:8.0),
                          child: Text("Make \n Payment",style: GoogleFonts.lato(fontSize: screenHeight/50),),
                        )
                      ],
                    ),
                  ),
                ),

              ],
            )

          ],
        ),
      ),
    );
  }
}


