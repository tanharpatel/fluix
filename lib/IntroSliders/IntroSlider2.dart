import 'package:cached_network_image/cached_network_image.dart';
import 'package:fluix/Utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluix/Utils/Theme.dart';
import 'package:google_fonts/google_fonts.dart';

/*TODO: PLEASE MAKE SURE TO IMPORT ALL THE PACKAGES & FILES AS SHOWN ABOVE YOU CAN REPLACE THE DEMO SCREENS WITH YOUR SCREEN*/


class IntroSlider2 extends StatefulWidget {
  static final String path = "lib/IntroSliders/IntroSlider2.dart";
  @override
  _IntroSlider2State createState() => _IntroSlider2State();
}

class _IntroSlider2State extends State<IntroSlider2> {
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
                    Color(0xFFa416f5),
                    Color(0xFFff9f4a),
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
                        //TODO your skip function
                      },
                      child: Text("Skip",style: TextStyle(fontSize: screenHeight/40,color: Colors.white),),
                    ),),
                  Container(
                    height: screenHeight/1.3,
                    child: PageView(
                      physics: ClampingScrollPhysics(),
                      controller: _pageController,
                      onPageChanged: (int page){
                        setState(() {
                          _currentPage  = page;
                        });
                      },
                      children: [

                        Center(
                          child: Stack(children: [
                            Container(
                              //height: screenHeight/1.3,
                              child: Card(
                                semanticContainer: true,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(40))),
                                elevation: 5.0,
                                shadowColor: Colors.black,
                                child: CachedNetworkImage(
                                  imageUrl: imagesSource[1],
                                  imageBuilder: (context,imageProvider) => Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(image: imageProvider,fit: BoxFit.cover,
                                          colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.darken)
                                      ),

                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(left: screenWidth/20,bottom: screenHeight/20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Cristiano Ronaldo", style: GoogleFonts.lato(fontSize: screenHeight/25,color: Colors.white,fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: screenHeight/22,),
                                  Text("Cristiano Ronaldo's stunning overhead kick for Real Madrid. Ronaldo lit up the Champions League quarter-final first-leg tie against Juventus with his remarkable bicycle kick to put Madrid 2-0 up and in a commanding position to progress to the semi-finals.",
                                    style: GoogleFonts.varelaRound(fontWeight: FontWeight.w300,color: Colors.white),
                                  )
                                ],
                              ),
                            )
                          ]),
                        ),

                        //Page 1
                        Center(
                          child: Stack(children: [
                            Container(
                              //height: screenHeight/1.3,
                              child: Card(
                                semanticContainer: true,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(40))),
                                elevation: 5.0,
                                shadowColor: Colors.black,
                                child: CachedNetworkImage(
                                  imageUrl: imagesSource[2],
                                  imageBuilder: (context,imageProvider) => Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(image: imageProvider,fit: BoxFit.cover,
                                      colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.darken)
                                      ),

                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(left: screenWidth/20,bottom: screenHeight/20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("CRISTIANO RONALDO", style: GoogleFonts.lato(fontSize: screenHeight/25,color: Colors.white,fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: screenHeight/22,),
                                  Text("When Tony Stark, an industrialist, is captured, he constructs a high-tech armoured suit to escape. Once he manages to escape, he decides to use his suit to fight against evil forces to save the world.",
                                  style: GoogleFonts.varelaRound(fontWeight: FontWeight.w300,color: Colors.white),
                                  )
                                ],
                              ),
                            )
                          ]),
                        ),

                        //Page 2
                        Center(
                          child: Stack(children: [
                            Container(
                              //height: screenHeight/1.3,
                              child: Card(
                                semanticContainer: true,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(40))),
                                elevation: 5.0,
                                shadowColor: Colors.black,
                                child: CachedNetworkImage(
                                  imageUrl: imagesSource[4],
                                  imageBuilder: (context,imageProvider) => Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(image: imageProvider,fit: BoxFit.cover,
                                          colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.darken)
                                      ),

                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(left: screenWidth/20,bottom: screenHeight/20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("RONALDO", style: GoogleFonts.lato(fontSize: screenHeight/25,color: Colors.white,fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: screenHeight/22,),
                                  Text("When Tony Stark, an industrialist, is captured, he constructs a high-tech armoured suit to escape. Once he manages to escape, he decides to use his suit to fight against evil forces to save the world.",
                                    style: GoogleFonts.varelaRound(fontWeight: FontWeight.w300,color: Colors.white),
                                  )
                                ],
                              ),
                            )
                          ]),
                        ),
                        // Page 3







                      ],
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top:screenHeight/50),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: _buildPageIndicator()
                    ),
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

                            Padding(
                              padding:  EdgeInsets.only(bottom:screenHeight/60),
                              child: Icon(
                                Icons.arrow_forward,
                                size: screenHeight/30,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ) :

                  Expanded(
                    child: Align(
                      alignment: FractionalOffset.bottomRight,
                      child: FlatButton(
                        onPressed: () {
                         //TODO NEW PAGE direction
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [

                            Padding(
                              padding:  EdgeInsets.only(bottom:screenHeight/60),
                              child: Icon(
                                Icons.check,
                                size: screenHeight/30,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )

                ],
              ),
            ),
          ),
        ),
    );
  }
}
