import 'package:flutter/material.dart';
import 'package:plant_store/Src/Utils/Export_Widgets.dart';

class ListRelease extends StatelessWidget {
  const ListRelease({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: kdefaulpadding, vertical: kdefaulpadding/2),
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: releases.length,
            itemBuilder: (context, index) => buildRelease(index)),
      ),
    );
  }
  Widget buildRelease(int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Row(
          children: [
            Container(
              height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: kColorGray
            ),
            child: Image.asset(releases[index].image, width: 80, fit:  BoxFit.cover,),   
            ),
             Expanded(
                 child: Padding(
                 padding: const EdgeInsets.only(left: 10),
                 child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text(releases[index].name,  style: TextStyle( color: kColorBlack, fontWeight: FontWeight.w600)),
                     SizedBox( height: 10,),
                     Text(releases[index].type, style: TextStyle( color: kColorGrayText, fontWeight: FontWeight.w600) )
                   ],
                 ),
               ),
             ),
             Text('\$${releases[index].price}0', style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: kColorGree))
            ],
        ),
      ),
    );
  }
}
