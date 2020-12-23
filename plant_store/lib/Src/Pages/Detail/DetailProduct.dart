import 'package:flutter/material.dart';
import 'package:plant_store/Src/Models/TopProductModel.dart';

class DetailProduct extends StatefulWidget {
  DetailProduct({Key key, List<TopProduct> product}) : super(key: key);

  @override
  _DetailProductState createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  final Function press;

  _DetailProductState({this.press});
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
