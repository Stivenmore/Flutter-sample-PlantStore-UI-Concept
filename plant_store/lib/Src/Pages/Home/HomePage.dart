import 'package:flutter/material.dart';
import 'package:plant_store/Src/Utils/Export_Widgets.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, List<TopProduct> product}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TopProduct product;

  _HomePageState({this.product});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: kdefaulpadding / 2),
            Search(),
            SizedBox(height: kdefaulpadding),
            Top(),
            ProductList(),
            SizedBox(height: kdefaulpadding),
            NewRelease(),
            ListRelease(),
          ],
        ),
      ),
    );
  }

  
}

