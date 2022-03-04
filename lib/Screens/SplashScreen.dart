

import 'package:electride_user/Screens/Language_select_screen.dart';
import 'package:electride_user/Screens/LoginScreen.dart';
import 'package:electride_user/Screens/MainScreen.dart';
import 'package:electride_user/common.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  userCheck() {
    Future.delayed(const Duration(seconds: 3), () async {
      Navigator.of(context).pushReplacementNamed(LanguageSelectScreen.Route);
      // Navigator.pushReplacement(
      //   context,
      //   MaterialPageRoute(builder: (context) => MainScreen()),
      // );
      final shared = await SharedPreferences.getInstance();
      //
      // if (shared.getBool(Strings.isLoggedIn) == true) {
      //   Navigator.pushReplacement(
      //     context,
      //     MaterialPageRoute(builder: (context) => BottomBar(0)),
      //   );
      // // }
      // else {
      //   Navigator.pushReplacement(
      //     context,
      //     MaterialPageRoute(builder: (context) =>  LoginScreen()),
      //   );
      //   }
    }
    );
  }

  @override
  void initState() {
    userCheck();
    // super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            // height: 120,
            // width: 150,
            // color: kBlackColor,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Image.asset("assets/logo/Electride_logo_vertical_name.png"),
              )),
        ));
  }
}

