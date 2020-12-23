import 'package:plant_store/Src/Utils/Export_Widgets.dart';

class NewRelease extends StatelessWidget {
  const NewRelease({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.only(left: kdefaulpadding),
    child: Row(
            children: [
            Expanded(child: Column(
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [
       Text('New release', style: TextStyle(color: kColorBlack, fontSize: 24, fontWeight: FontWeight.w600),),
       Text('8 plants',  style: TextStyle(
               fontSize: 14,
               fontWeight: FontWeight.bold,
               color: kColorGrayText))
     ],
            )),
           IconButton(icon: Icon(Icons.more_vert, color: kColorBlack), onPressed:(){})
           ],
           ),
           );
  }
}

