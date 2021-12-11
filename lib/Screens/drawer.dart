import 'package:electride_user/common.dart';
import 'package:electride_user/constants/constants.dart';
import 'package:electride_user/constants/constants.dart';
import 'package:electride_user/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PickDrop extends StatefulWidget {
  PickDrop({Key key}) : super(key: key);
  //final LatLng _center = const LatLng(45.521563, -122.677433);

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
      body: Stack(
        children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff72B844),
                Color(0xff232553),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter
            )
          ),
        ),
          SafeArea(
            child: Container(
              width: 200.0,
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  DrawerHeader(child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius:  50.0,
                        backgroundImage: AssetImage(
                        'assets/images/img.png' ),
                      ),
                      SizedBox(height: 5.0,),
                      Text('RATAN TATA',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                      ),
                    ],
                  ),),
                  Expanded(child: ListView(
                    children: [
                      ListTile(
                        leading: Icon(Icons.person,
                          color: Colors.white,
                        ),
                        title: Text('Profile',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.history,
                          color: Colors.white,
                        ),
                        title: Text('History',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.money,
                          color: Colors.white,
                        ),
                        title: Text('Payment',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.ac_unit_rounded,
                          color: Colors.white,
                        ),
                        title: Text('Rewards',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.alarm,
                          color: Colors.white,
                        ),
                        title: Text('Notification',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.all_inclusive,
                          color: Colors.white,
                        ),
                        title: Text('Terms & Conditions',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.add_alert_sharp,
                          color: Colors.white,
                        ),
                        title: Text('Help',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.logout,
                          color: Colors.white,
                        ),
                        title: Text('Log Out',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  )),
                ],
              ),
            ),
          ),
          TweenAnimationBuilder(tween: Tween<double>(begin: 0,end: value),
              duration: Duration(milliseconds: 500),
              builder: (_, double val, __)
          {
            return(
            Transform(
              transform: Matrix4.identity()
              ..setEntry(3,2,0.001)
                ..setEntry(0,3,200*val)
                ..rotateY((pi/6)*value),
            child: Scaffold(
              appBar: AppBar(
                title: Text(
                          "Choose your Ride",
                          style: TextStyle(
                              color: kWhiteColor,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                backgroundColor:Color(0xff232553),
              ),
              body: Center(
                child: SizedBox(
                  height: height*15,
                  child: SizedBox(
                    height: height*0.20,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            decoration: const InputDecoration(
                                icon:  Icon(Icons.home,
                                color: Color(0xff232553),),
                                border: UnderlineInputBorder(),
                                labelText: 'Enter your Pickup location'
                            ),
                          ),
                        ),
                        heightBox,
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            decoration: const InputDecoration(
                                icon:  Icon(Icons.search,
                                color: Color(0xff232553),
                                ),
                                border: UnderlineInputBorder(),
                                labelText: 'Enter your Destination location'
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            ));
          }),
          GestureDetector(
            onTap: (){
              setState(()
              {
                value == 0? value = 1 : value = 0;
              });
            },
          )
        ],
      ),
    );
  }
}
