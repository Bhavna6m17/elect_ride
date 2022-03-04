import 'dart:math';

import 'package:electride_user/common.dart';
import 'package:electride_user/constants/app_strings.dart';
import 'package:electride_user/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PickDrop extends StatefulWidget {
  PickDrop({Key key}) : super(key: key);

  @override
  _PickDropState createState() => _PickDropState();
}

class _PickDropState extends State<PickDrop> {
  double value = e;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Choose your Ride",
          style: TextStyle(
              color: kWhiteColor, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xff232553),
      ),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/images/img.png'),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              'RATAN TATA',
              style: TextStyle(
                color: Color(0xff232553),
                fontSize: 20.0,
              ),
            ),
            Expanded(
                child: ListView(
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.person,
                        color: Color(0xff232553),
                      ),
                      title: Text(
                        AppString.profile,
                        style: TextStyle(
                          color: Color(0xff232553),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.history,
                        color: Color(0xff232553),
                      ),
                      title: Text(
                        'History',
                        style: TextStyle(
                          color: Color(0xff232553),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.money,
                        color: Color(0xff232553),
                      ),
                      title: Text(
                        'Payment',
                        style: TextStyle(
                          color: Color(0xff232553),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.ac_unit_rounded,
                        color: Color(0xff232553),
                      ),
                      title: Text(
                        'Rewards',
                        style: TextStyle(
                          color: Color(0xff232553),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.alarm,
                        color: Color(0xff232553),
                      ),
                      title: Text(
                        'Notification',
                        style: TextStyle(
                          color: Color(0xff232553),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.all_inclusive,
                        color: Color(0xff232553),
                      ),
                      title: Text(
                        'Terms & Conditions',
                        style: TextStyle(
                          color: Color(0xff232553),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.add_alert_sharp,
                        color: Color(0xff232553),
                      ),
                      title: Text(
                        'Help',
                        style: TextStyle(
                          color: Color(0xff232553),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.logout,
                        color: Color(0xff232553),
                      ),
                      title: Text(
                        'Log Out',
                        style: TextStyle(
                          color: Color(0xff232553),
                        ),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
