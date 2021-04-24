import 'package:counter_app1/GuidesPage(U).dart';
import 'package:flutter/material.dart';
import 'package:counter_app1/AddGuidesPage.dart';
import 'Guidespage.dart';
import 'GuideDetail.dart';
import 'package:get/get.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GuidesPage',
      theme: ThemeData(
        primaryColor: Colors.green[300],
        scaffoldBackgroundColor: Colors.green[ 50],
        accentColor: Colors.teal[300],
        textTheme: TextTheme(
          body1: TextStyle(
            color: Colors.black,
          )
        )
      ),
      home: AddGuides(),
    );
  }
}


