import 'package:flutter/material.dart';
import 'package:plant_store/Src/Utils/Export_Widgets.dart';

class Top extends StatelessWidget {
  const Top({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: kdefaulpadding),
      child: Row(
        children: [
          Expanded(child: Text('Top product', style: TextStyle(color: kColorBlack, fontSize: 24, fontWeight: FontWeight.w600),)),
          IconButton(icon: Icon(Icons.more_vert, color: kColorBlack), onPressed:(){})
        ],
      ),
    );
  }
}

