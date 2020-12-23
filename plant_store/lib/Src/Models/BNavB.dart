import 'package:plant_store/Src/Utils/Export_Widgets.dart';

class BottomNavBar {
  final String path;

  BottomNavBar({this.path});
}

List<BottomNavBar> itemsBar = [
  BottomNavBar(path: 'assets/icons/home.svg'),
  BottomNavBar(path: 'assets/icons/categories.svg'),
  BottomNavBar(path: 'assets/icons/shopping-bags.svg'),
  BottomNavBar(path: 'assets/icons/user.svg'),
];
