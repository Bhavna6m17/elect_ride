import 'dart:async';

import 'package:electride_user/Screens/OtpScreen.dart';
import 'package:electride_user/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MainScreen extends StatefulWidget {
  static const Route = 'MainPage';
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Material(
        child: Scaffold(
          key: _globalKey,
          // backgroundColor: Colors.white,

          drawer: MyDrawer(),

          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                child: Stack(
                  children: [
                    SizedBox(
                      height: height * 6,
                      width: width,
                      child: GoogleMap(
                        mapType: MapType.hybrid,
                        initialCameraPosition: _kGooglePlex,
                        onMapCreated: (GoogleMapController controller) {
                          _controller.complete(controller);
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: kWhiteColor,
                        ),
                        child: GestureDetector(
                          onTap: () {
                            _globalKey.currentState.openDrawer();
                          },
                          child: Icon(
                            Icons.menu,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Text('Pickup Location'),
              ),
              Container(
                child: Text('Where to go'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              child: Container(
            color: kGreenColor,
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      maxRadius: 40,
                      backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80"),
                    ),
                    Text("hellohii")
                  ],
                )
              ],
            ),
          )),
          ListTile(
            title: Text("Profile"),
            leading: Icon(Icons.person),
            onTap: () {},
          ),
          ListTile(
            title: Text("Rides"),
            leading: Icon(Icons.bike_scooter),
            onTap: () {},
          ),
          ListTile(
            title: Text("Payment"),
            leading: Icon(Icons.money),
            onTap: () {},
          ),
          ListTile(
            title: Text("Signout"),
            leading: Icon(Icons.exit_to_app),
            onTap: () {},
          ),
          ListTile(
            title: Text("Help"),
            leading: Icon(Icons.help_center_outlined),
            onTap: () {},
          ),
          ListTile(
            title: Text("About"),
            leading: Icon(Icons.info),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
