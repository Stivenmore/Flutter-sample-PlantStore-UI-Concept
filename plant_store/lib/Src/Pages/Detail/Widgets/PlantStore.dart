import 'package:plant_store/Src/Utils/Export_Widgets.dart';

class PlantStore extends StatefulWidget {
  PlantStore({Key key}) : super(key: key);

  @override
  _PlantStoreState createState() => _PlantStoreState();
}

class _PlantStoreState extends State<PlantStore> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: kdefaulpadding * 1.5,
          left: kdefaulpadding,
          right: kdefaulpadding),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Container(
                child: SvgPicture.asset(
              'assets/image/App_icon.svg',
              height: 50,
            )),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ' Plant Store',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: kColorBlack),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.star,
                      size: 18,
                      color: kColorOrange,
                    ),
                    Text('Star Setler',
                        style: TextStyle(
                            color: kColorOrange,
                            fontSize: 14,
                            fontWeight: FontWeight.w800)),
                  ],
                )
              ],
            ),
          ),
          GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: kColorGree)),
              height: 30,
              width: 80,
              child: Row(
                children: [
                  SvgPicture.asset('assets/icons/user.svg',
                      height: 30, color: kColorGree),
                  Text('Follow',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: kColorGree,
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
