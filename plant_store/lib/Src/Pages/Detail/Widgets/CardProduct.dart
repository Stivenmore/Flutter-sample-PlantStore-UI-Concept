import 'package:flutter/material.dart';
import 'package:plant_store/Src/Models/TopProductModel.dart';
import 'package:plant_store/Src/Utils/Export_Widgets.dart';

class CardProduct extends StatelessWidget {
  final TopProduct products;
  const CardProduct({Key key, this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kdefaulpadding),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: kColorGray
        ),
        height: 280,
        width: 400,
        child: Row(children: [
              SizedBox(
                width: 10,
              ),
              Container(
                child: Image.asset(
                  products.image,
                  width: 125,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: kdefaulpadding, top: kdefaulpadding * 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text( '\$${products.price}0',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: kColorGree)),
                    SizedBox(
                      height: 15,
                    ),
                    Text('Name',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: kColorGrayText)),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '${products.name}',
                      style: TextStyle(
                          color: kColorBlack, fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text('Type',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: kColorGrayText)),
                    Text('${products.type}',
                        style: TextStyle(
                            color: kColorBlack, fontWeight: FontWeight.w600, fontSize: 16)),
                    SizedBox(
                      height: 15,
                    ),
                    Row(

                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16)),
                            child: Image.asset(
                              'assets/image/plat-2.png',
                              height: 60,
                              width: 60,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(color: kColorGree)
                            ),
                            child: Image.asset(
                              'assets/image/plat-3.png',
                              height: 60,
                              width: 60,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                ),
                            child: Image.asset(
                              'assets/image/plat-1.png',
                              height: 60,
                              width: 60,
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
              )
            ]),
      ),
    );
  }
}
