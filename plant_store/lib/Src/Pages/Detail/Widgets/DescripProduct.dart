import 'package:flutter/material.dart';
import 'package:plant_store/Src/Models/TopProductModel.dart';
import 'package:plant_store/Src/Utils/Export_Widgets.dart';

class DescripProduct extends StatelessWidget {
  final TopProduct products;
  const DescripProduct({
    Key key,
    this.products,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kdefaulpadding),
      child: Container(
        height: 80,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Descripcion:',
              style: TextStyle(
                  color: kColorBlack,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10,),
            Text('${products.description}', style: TextStyle(
              color: kColorGrayText, fontSize: 15, fontWeight: FontWeight.bold 
            ),)
          ],
        ),
      ),
    );
  }
}
