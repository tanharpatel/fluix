import 'package:cached_network_image/cached_network_image.dart';
import 'package:fluix/Utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluix/Utils/Theme.dart';
import 'package:google_fonts/google_fonts.dart';

class Introslider1 extends StatefulWidget {
  static final String path = "lib/IntroSliders/IntroSlider1.dart";
  @override
  _Introslider1State createState() => _Introslider1State();
}

class _Introslider1State extends State<Introslider1> {
  final int _numPage = 3;
  final PageController _pageController = PageController(initialPage: 0);
   int _currentPage = 0;
   
   List<Widget> _buildPageIndicator(){
     List<Widget> list=[];
     for(int i=0;i<_numPage;i++){
       list.add(i== _currentPage ? _indicator(true): _indicator(false));
     }
     return list;
   }

   Widget _indicator(bool isActive){
     return AnimatedContainer(
       duration: Duration(milliseconds: 150),
       margin: EdgeInsets.symmetric(horizontal: 8.0),
       height: 8.0,
       width: isActive ? 24.0 : 16.0,
       decoration: BoxDecoration(
         color: isActive ? Colors.white : Color(0xFF7B51D3),
         borderRadius: BorderRadius.all(Radius.circular(12)),
       ),
     );
   }
   
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.1,0.4,0.7,0.9],
              colors: [
                Color(0xFF3594DD),
                Color(0xFF4563DB),
                Color(0xFF5036D5),
                Color(0xFF5B16D0),
              ],
            )
          ),
          child: Padding(
            padding:  EdgeInsets.only(top:screenHeight/35,right:screenWidth/50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(alignment: Alignment.centerRight,
                child: FlatButton(
                  onPressed: ()  {
                    print("SKip");
                   /* //TODO your skip function*/
                  },
                  child: Text("Skip",style: TextStyle(fontSize: screenHeight/40,color: Colors.white),),
                ),),
                Container(
                  height: screenHeight/1.39,

                  child: PageView(
                    physics: ClampingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (int page){
                      setState(() {
                        _currentPage  = page;
                      });
                    },
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal:screenWidth/16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(child: CachedNetworkImage(imageUrl: profilePics[0],height: screenHeight/2.5, width: screenWidth/1.3,),
                               ),
                            SizedBox(height: screenHeight/30, ),
                            Text("Connect\nHello World",style: GoogleFonts.concertOne(color: Colors.white,textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: screenHeight/25)),),
                            SizedBox(height: screenHeight/25,),
                            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley",
                            style: GoogleFonts.lato(color: Colors.white,textStyle: TextStyle(fontWeight: FontWeight.w400,letterSpacing: 1.0,wordSpacing: 2.0)),),

                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal:screenWidth/16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(child: CachedNetworkImage(imageUrl: profilePics[1],height: screenHeight/2.5, width: screenWidth/1.3,),
                            ),
                            SizedBox(height: screenHeight/30, ),
                            Text("Hello\nGanesh Gaitonde",style: GoogleFonts.concertOne(color: Colors.white,textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: screenHeight/25)),),
                            SizedBox(height: screenHeight/25,),
                            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley",
                              style: GoogleFonts.lato(color: Colors.white,textStyle: TextStyle(fontWeight: FontWeight.w400,letterSpacing: 1.0,wordSpacing: 2.0)),),

                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal:screenWidth/16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(child: CachedNetworkImage(imageUrl: profilePics[2],height: screenHeight/2.5, width: screenWidth/1.3,),
                            ),
                            SizedBox(height: screenHeight/30, ),
                            Text("25 din\nPaisa Double",style: GoogleFonts.concertOne(color: Colors.white,textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: screenHeight/25)),),
                            SizedBox(height: screenHeight/25,),
                            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley",
                              style: GoogleFonts.lato(color: Colors.white,textStyle: TextStyle(fontWeight: FontWeight.w400,letterSpacing: 1.0,wordSpacing: 2.0)),),

                          ],
                        ),
                      )


                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator()
                ),
                _currentPage != _numPage - 1 ? Expanded(
                  child: Align(
                    alignment: FractionalOffset.bottomRight,
                  child: FlatButton(
                    onPressed: () {
                      _pageController.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeInToLinear);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("Next",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenHeight/40
                        ),),
                        SizedBox(
                          width: screenWidth/25,
                          height: screenHeight/10,
                        ),
                        Icon(
                          Icons.arrow_forward,
                          size: screenHeight/30,
                          color: Colors.white,
                        )
                      ],
                    ),
                    ),
                  ),
                ) :
                    Text(" ")
              ],
            ),
          ),
        ),
      ),
     bottomSheet: _currentPage == _numPage - 1 ? Container(
       height: screenHeight/9,
       width: double.infinity,
       child: Center(
         child: GestureDetector(
           onTap: (){
            /* //Todo your home page goes here*/
           },
           child: Text("Get started",
           style: TextStyle(
             color: CupertinoColors.activeBlue,
             fontWeight: FontWeight.bold,
             fontSize: screenHeight/40,
           ),),
         ),
       ),
     ) : Text('')
    );
  }
}
