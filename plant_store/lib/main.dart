import 'package:flutter/material.dart';
import 'package:plant_store/Src/Utils/Export_Widgets.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plant Store',
      home: Home(),
    );
  }
}