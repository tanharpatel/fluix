import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluix/Utils/constants.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Settings2 extends StatelessWidget {
  static final String path = "lib/Settings/Settings2.dart";
  List<String> tags= ["urban","dynamic","Abstract",'Nature',"LongEx","DoubleB","Calligra","Sky"];
  List<String> categories= ["Category 1","Category 2","Category 3","Category 4","Category 5","Category 6","Category 7",];
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff09031D),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff09031D),
        leading: Icon(Icons.arrow_back),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.more_vert),
          )
        ],

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.only(left:screenSize.width/10,top: 7),
                child: CircleAvatar(
                  radius: 35,
                  backgroundImage: CachedNetworkImageProvider(profilePics[0]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Photo Page",style: TextStyle(fontWeight: FontWeight.bold,fontSize: screenSize.height/28,color: Colors.white),),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.location_on,color: Colors.white,size: screenSize.height/50,),
                        Padding(
                          padding: const EdgeInsets.only(left:8.0),
                          child: Text("Boston",style: TextStyle(color: Colors.white,wordSpacing: 2,letterSpacing: 4),),
                        )
                      ],
                    )

                  ],
                ),
              )

            ],
          ),

          Padding(
            padding:  EdgeInsets.symmetric(horizontal:screenSize.width/12,vertical:screenSize.height/40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('20K',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: screenSize.height/35),),
                    Text('followers',style: TextStyle(color: Colors.white,),),
                  ],
                ),
                Container(color: Colors.white,
                  width: 0.2,
                  height: screenSize.height/40,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('438',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: screenSize.height/35),),
                    Text('following',style: TextStyle(color: Colors.white,),),
                  ],
                ),
                Container(
                  width: 0.2,
                  height: screenSize.height/40,
                  color: Colors.white,
                ),
                GestureDetector(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: screenSize.width/23,vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(33)),
                      gradient: LinearGradient(
                        colors: [Color(0xff6D0EB5),Color(0xff4059F1)],
                        begin: Alignment.bottomRight,
                        end: Alignment.centerLeft
                      )
                    ),
                    child: Text("Follow",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  ),
                  onTap: (){
                    /*//TODO Implement the follow function*/
                  },
                )
              ],
            ),
          ),

          Container(

            height: screenSize.height/20,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
            itemCount: tags.length,
            itemBuilder: (BuildContext context, int index){
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    border: Border.all(color:Colors.white12)
                  ),
                  margin: EdgeInsets.only(right: screenSize.width/25),
                  child: Padding(
                    padding:  EdgeInsets.only(top:screenSize.height/70,bottom: 5,right: screenSize.width/25,left: screenSize.width/25),
                    child: Text(tags[index],style: TextStyle(color: Colors.white),),
                  ),
                );
            },),
          ),

          Expanded(
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.only(top:screenSize.height/40),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top:Radius.circular(34)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(top:screenSize.height/30,right:screenSize.width/25,left: screenSize.width/20),
                    child: Text("Portfolio",style: TextStyle(fontWeight:FontWeight.bold,fontSize: screenSize.height/25),),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: screenSize.width/30),
                    height: screenSize.height/20,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categories.length,
                      itemBuilder: (BuildContext context,int index){
                        return Container(
                          padding:  EdgeInsets.all(screenSize.height/80),
                            child: Text(categories[index],style: TextStyle(color: Colors.grey.withOpacity(0.7)),));
                      },
                    ),
                  ),
                  Expanded(
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: screenSize.width/25),
                            height: screenSize.height/3,
                            child: StaggeredGridView.countBuilder(
                                crossAxisCount: 4,
                                itemCount: 4,
                                itemBuilder: (BuildContext context,int index) => Container(
                                  child: ClipRRect(
                                    borderRadius:BorderRadius.all(Radius.circular(12)) ,
                                    child: CachedNetworkImage(imageUrl: profilePics[index+1],fit: BoxFit.cover,),
                                  ),
                                ),
                              staggeredTileBuilder: (int index)=>StaggeredTile.count(2, index.isEven ? 3:1),
                              mainAxisSpacing: 9,
                              crossAxisSpacing: 8,
                            ),
                          ),
                          ),
                      ],

                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
