import 'package:flutter/material.dart';
import 'package:plant_store/Src/Utils/Export_Widgets.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [HomePage(), CustomBNB()],
    );
  }
}
