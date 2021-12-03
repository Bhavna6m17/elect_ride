import 'package:electride_user/Screens/OtpScreen.dart';
import 'package:electride_user/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MainScreen extends StatefulWidget {
  static const Route = 'MainPage';

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Material(
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            // leading: IconButton(icon: Icon(Icons.home_outlined), onPressed: () {}),
          ),
          drawer: Drawer(
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
          ),
          body: Stack(
            children: [
              Positioned(
                  bottom: -1,
                  child: VxBox(
                    child: Column(
                      children: [
                        VxBox(child: "From".text.xl.make().centered())
                            .width(width * 0.9)
                            .height(height * 0.06)
                            .rounded
                            .neumorphic(elevation: 1)
                            .make()
                            .centered(),
                        HeightBox(height * 0.02),
                        VxBox(child: "Where to Go?".text.xl.make().centered())
                            .width(width * 0.9)
                            .height(height * 0.06)
                            .rounded
                            .neumorphic(elevation: 1)
                            .make()
                            .centered(),
                      ],
                    ),
                  ).height(height * 0.3).color(Colors.blue).make()),
            ],
          )),
    );
  }
}
