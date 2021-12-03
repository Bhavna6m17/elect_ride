import 'dart:io';

import 'package:electride_user/Screens/Delivery_item.dart';
import 'package:electride_user/Screens/MainScreen.dart';
import 'package:electride_user/constants/constants.dart';
import 'package:electride_user/widgets/Bottom_Bar_tile_Item.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:velocity_x/velocity_x.dart';

class BottomBar extends StatefulWidget {
  //final String uid;

  const BottomBar({
    Key key,
  }) : super(key: key);
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentIndex = 0;
  DateTime currentBackPressTime;

  changeIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: Container(
        // color: kBlueColor,
        height: height * 0.1,
        child: BottomAppBar(
          color: kBlueColor,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BottomBarTileItem(
                  index: 0,
                  icon: Icons.bike_scooter,
                  name: "Ride",
                  onTap: () {
                    changeIndex(0);
                  },
                  color: (currentIndex == 0) ? kGreenColor : Colors.grey),
              BottomBarTileItem(
                  index: 1,
                  img: (currentIndex == 1
                      ? "assets/bottomIcon/successful_delivery_green.png"
                      : "assets/bottomIcon/successful_delivery_grey.png"),
                  name: "Local Delivery",
                  onTap: () {
                    changeIndex(1);
                  },
                  color: (currentIndex == 0) ? kGreenColor : Colors.grey),
            ],
          ),
        ),
      ),
      body: WillPopScope(
        child: (currentIndex == 0)
            ? MainScreen()
            // :
            // (currentIndex == 1)
            //     ? Reviews()
            : DeliveryItem(),
        onWillPop: () async {
          bool backStatus = onWillPop();
          if (backStatus) {
            exit(0);
          }
          return false;
        },
      ),
    );
  }

  getBottomBarItemTile(int index, String name, {icon, String img}) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      //borderRadius: BorderRadius.circular(30.0),
      //focusColor: kGreenColor,
      onTap: () {
        changeIndex(index);
      },
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
          Icon(icon ?? null,
              size: 30.0,
              color: (currentIndex == index) ? kGreenColor : Colors.grey),
          // ),
          name.text
              .color((currentIndex == index) ? kGreenColor : Colors.grey)
              .make()
        ],
      ),
    );
  }

  onWillPop() {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime) > Duration(seconds: 2)) {
      currentBackPressTime = now;
      Fluttertoast.showToast(
        msg: 'Press Back Once Again to Exit.',
        backgroundColor: Colors.black,
        textColor: kWhiteColor,
      );
      return false;
    } else {
      return true;
    }
  }
}
