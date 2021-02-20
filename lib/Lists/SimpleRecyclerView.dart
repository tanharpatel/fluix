import 'package:fluix/Components/CustomAppBar.dart';
import 'package:fluix/Utils/Theme.dart';
import "package:flutter/material.dart";
import 'package:fluix/Utils/constants.dart';

/*TODO: PLEASE MAKE SURE TO IMPORT ALL THE PACKAGES & FILES AS SHOWN ABOVE YOU CAN REPLACE THE DEMO SCREENS WITH YOUR SCREEN*/

class RecycleListView extends StatelessWidget {
  static final String path = "lib/Lists/SimpleRecyclerView.dart";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.cyan,
     appBar: AppBar(
       title: Text("RecycleListView"),
       backgroundColor: Colors.redAccent,
       leading: Icon(Icons.arrow_back,color: Colors.white,),
     ),
      body:ListView.builder(
        itemCount: Food_Title.length,
         itemBuilder: (BuildContext context,int index) {
           final screenHeight = MediaQuery.of(context).size.height;
           final screenWidth = MediaQuery.of(context).size.width;
          return Padding(
            padding: EdgeInsets.symmetric(horizontal:screenWidth/40),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30))
              ),
              elevation: 3.0,
              child: Container(
                height: screenHeight/7,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: CircleAvatar(
                        child: Image.asset(food_images[index]),
                        radius: 30,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth/20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(Food_Title[index],style: TextStyle(color: enableDarkMode ? Colors.white : Colors.black,fontSize: screenHeight/40),),
                          SizedBox(height: 10,),
                          Text(Food_Price[index],style: TextStyle(color: enableDarkMode ? Colors.white : Colors.black,),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
    },
      )
      );

  }
}
