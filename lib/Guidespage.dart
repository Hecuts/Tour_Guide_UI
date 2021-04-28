import 'package:flutter/material.dart';
import 'BottomButton.dart';
import 'AddGuidesPage.dart';
import 'Constants.dart';
import 'package:get/get.dart';
import 'GuideDetail.dart';
import 'package:get/get.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class GuidesPage extends StatelessWidget {

  int _counter = 0;
  final listOfGuides=["Abebe","Kebede","Kebede","Kebede","Kebede",
    "Kebede","Abebe","Kebede","Kebede","Kebede","Kebede","Kebede",
    "Abebe","Kebede","Kebede","Kebede","Kebede","Kebede",
    "Abebe","Kebede","Kebede","Kebede","Kebede","Kebede"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Guides Page',
                style: kTitleTextStyle,
          ),
        ),
      ),
      body: Column(
        children: <Widget> [
          Expanded(
            //flex: 5,
            child: GridView.builder(
                padding: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
                //scrollDirection: Axis.horizontal, // for the listview of the hotels and attraction sites.
                itemCount: listOfGuides.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                ), itemBuilder: (context,index){
              return GestureDetector(
                onTap: () {
                  print(" navigation to the guides profile page ");
                  Get.to(GuideDetail());
                },
                child: Container(
                  child: Column(
                    children: [
                      Expanded(
                        child: CircleAvatar(
                          radius: 80,
                          backgroundImage: AssetImage('images/meno.jpg'),
                        ),
                      ),
                      Text("${listOfGuides[index]}"),
                      RatingBarIndicator(
                        rating: 2.75,
                        itemBuilder: (context, index) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        itemCount: 5,
                        itemSize: 10.0,
                        direction: Axis.horizontal,
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: BottomButton(
              onTap: (){
                print(listOfGuides[1]);
                Get.to(AddGuides());
              },
              buttonTitle: 'Add Guide',
            ),
          ),
        ],
      ),
    );
  }
}
