import 'package:flutter/material.dart';
import 'package:plant_store/Src/Utils/Export_Widgets.dart';

class Search extends StatelessWidget {
  const Search({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: kdefaulpadding,left: kdefaulpadding),
      child: Row(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Container(
              child: Image.asset('assets/image/yo.jpeg', fit: BoxFit.cover,height: 50, width: 50,),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hi Noah,', style: TextStyle(fontWeight: FontWeight.bold, color: kColorBlack),),
                SizedBox(height: 5,),
                Text('What do you want to buy?', style: TextStyle( fontWeight: FontWeight.w700,color: kColorGrayText))
              ],
            ),
          ),
          IconButton(icon: Icon(Icons.search, size: 32,), onPressed: () {})
        ],
      ),
    );
  }
}
