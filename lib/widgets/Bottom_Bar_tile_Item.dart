import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class BottomBarTileItem extends StatelessWidget {
  String img;
  IconData icon;
  String name;
  int index;
  VoidCallback onTap;
  Color color;
  BottomBarTileItem(
      {Key key,
      this.color,
      this.icon,
      this.img,
      this.index,
      this.name,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      //borderRadius: BorderRadius.circular(30.0),
      //focusColor: kGreenColor,
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Container(
          //   // height: 50.0,
          //   // width: 50.0,
          //   alignment: Alignment.center,
          //   decoration: BoxDecoration(
          //     //borderRadius: BorderRadius.circular(25.0),
          //     color: (currentIndex == index)
          //         ? Colors.grey[100]
          //         : Colors.transparent,
          //   ),
          //   child:
          Container(
            height: height * 0.08,
            width: width * 0.08,
            child: Image.asset(
              img ?? '',
            ),
          ),
          Icon(
            icon ?? null,
            size: 30.0,
            color: color,
          ),
          name.text.color(color).make()
        ],
      ),
    );
  }
}
