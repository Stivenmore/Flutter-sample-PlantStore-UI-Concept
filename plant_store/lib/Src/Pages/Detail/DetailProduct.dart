import 'package:flutter/material.dart';
import 'package:plant_store/Src/Pages/Detail/Widgets/CardProduct.dart';
import 'package:plant_store/Src/Pages/Detail/Widgets/DescripProduct.dart';
import 'package:plant_store/Src/Pages/Detail/Widgets/PlantStore.dart';
import 'package:plant_store/Src/Pages/Detail/Widgets/Review.dart';
import 'package:plant_store/Src/Utils/Export_Widgets.dart';

class DetailProduct extends StatelessWidget {

  final TopProduct product;
  const DetailProduct({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
            children: [
              PlantStore(),
              SizedBox(
                height: 35,
              ),
                CardProduct(products: product),
                SizedBox(
                height: 25,
              ),
                DescripProduct(products: product),
                Lastest(),
                Review(star: 4.8, favorite: 2, colorfavorite: kColorGrayText, image: 'assets/image/retro1.jpg',
                name: 'Cristina Tena', aporte: 'Very high quality',),
                Review(image: 'assets/image/retro2.jpg', name: 'Tania Romero', aporte: 'Very GOOD, i will \nabsoluty order again ',
                star: 4.5, colorfavorite: kColorOrange, favorite: 8,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kdefaulpadding*1.5, vertical: kdefaulpadding),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          border: Border.all(
                            color: kColorOrange
                          ),
                          boxShadow: [BoxShadow(
                            offset: Offset(0, 17),
                            spreadRadius: -20,
                            blurRadius: 17
                          )]
                        ),
                        height:50,
                        width: 50,
                        child: Icon(Icons.shopping_basket, color: kColorOrange),
                      ),
                      SizedBox(width: 8,),
                      Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                               color: kColorOrange,
                              borderRadius: BorderRadius.circular(16)
                            ),
                          height: 50,
                          child: Center(child: Text('Buy Now', textAlign: TextAlign.center, style: 
                          TextStyle(color: kColorWhite, fontWeight: FontWeight.bold, fontSize: 20),)),
                        ),
                      )
                    ],
                  ),
                )
            ],
          ),
      ));
  }
}

class Lastest extends StatelessWidget {
  const Lastest({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: kdefaulpadding, right: kdefaulpadding/1.5, bottom: kdefaulpadding, top: 10),
      child: Row(
        children: [
      Expanded(
     child: Text('Latest review:',style: TextStyle(
      color: kColorBlack,
      fontSize: 16,
      fontWeight: FontWeight.w500)),),
      Text('See all', style: TextStyle(fontWeight: FontWeight.w500, color: kColorGrayText),),
      Icon(Icons.arrow_forward_ios, size: 16,)
        ],
      ),
    );
  }
}