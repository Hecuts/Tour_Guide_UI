  import 'package:counter_app1/Constants.dart';
import 'package:flutter/material.dart';
  class GuidesPageU extends StatelessWidget {
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
                  'Guides page',
                style: kTitleTextStyle,
              ),
            ),
          ),
          body: Column(
              children: <Widget> [
          Expanded(
          child: GridView.builder(
          padding: EdgeInsets.only(top: 50.0, left: 10.0, right: 10.0),
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
            },
            child: Container(
              child: Column(
              children: [
                Expanded(
                  child: CircleAvatar(
                    radius: 80,
                  ),
                ),
                Text("${listOfGuides[index]}"),
              ],
            ),
          ),
        );
               }),
            ),
          ],
        ),
      );
    }
  }
