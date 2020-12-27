import 'package:flutter/material.dart';
import 'package:plant_store/Src/Utils/Export_Widgets.dart';

class Review extends StatelessWidget {
  final double star;
  final String name;
  final String aporte;
  final Color colorfavorite;
  final int favorite;
  final String image;
  const Review(
      {Key key,
      this.star,
      this.favorite,
      this.colorfavorite,
      this.name,
      this.aporte, this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: kdefaulpadding),
        child: Container(
            height: 80,
            width: double.infinity,
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Container(
                  height: 50,
                  width: 50,
                  child: Image.asset(image),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 15, left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$name',
                      style: TextStyle(
                          color: kColorBlack,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('$aporte',
                        style: TextStyle(
                            color: kColorGrayText,
                            fontSize: 15,
                            fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              SizedBox(
                width: 0,
              ),
              Icon(Icons.star, size: 16, color: kColorOrange),
              Text('$star'),
              Spacer(),
              Icon(
                Icons.favorite,
                color: colorfavorite,
              ),
              SizedBox(
                width: 4,
              ),
              Text('$favorite',
                  style: TextStyle(
                    color: colorfavorite,
                  ))
            ])));
  }
}
