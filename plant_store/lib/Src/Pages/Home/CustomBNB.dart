import 'package:flutter/material.dart';

import 'package:plant_store/Src/Utils/Export_Widgets.dart';

class CustomBNB extends StatefulWidget {
  CustomBNB({Key key}) : super(key: key);

  @override
  _CustomBNBState createState() => _CustomBNBState();
}

class _CustomBNBState extends State<CustomBNB> {
  int _selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 100,
            child: Stack(
              overflow: Overflow.visible,
              children: [
                CustomPaint(
                    size: Size(size.width, 100), painter: SCustomPainter()),
                Center(
                    heightFactor: 1.5,
                    child: FloatingActionButton(
                      onPressed: () {},
                      backgroundColor: kColorOrange,
                      child: Icon(Icons.crop_free),
                    )),
                Container(
                    height: 100,
                    width: double.infinity,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: itemsBar.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                _selectIndex = index;
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: kdefaulpadding * 2,
                                  left: kdefaulpadding * 1.92),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SvgPicture.asset(
                                    itemsBar[index].path,
                                    color: _selectIndex == index
                                        ? kColorGree
                                        : kColorGrayText,
                                    height: 50,
                                  ),
                                ],
                              ),
                            ),
                          );
                        }))
              ],
            ),
          ),
        )
      ],
    );
  }
}

class SCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    Path path_0 = Path();
    path_0.moveTo(0, size.height * 0.50);
    path_0.quadraticBezierTo(size.width * 0.37, size.height * 0.40,
        size.width * 0.40, size.height * 0.50);
    path_0.cubicTo(size.width * 0.41, size.height * 0.59, size.width * 0.42,
        size.height * 0.81, size.width * 0.45, size.height * 0.85);
    path_0.cubicTo(size.width * 0.49, size.height * 0.91, size.width * 0.51,
        size.height * 0.92, size.width * 0.55, size.height * 0.85);
    path_0.cubicTo(size.width * 0.59, size.height * 0.78, size.width * 0.59,
        size.height * 0.59, size.width * 0.60, size.height * 0.50);
    path_0.quadraticBezierTo(
        size.width * 0.63, size.height * 0.41, size.width, size.height * 0.50);
    path_0.lineTo(size.width, size.height);
    path_0.lineTo(0, size.width);

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
