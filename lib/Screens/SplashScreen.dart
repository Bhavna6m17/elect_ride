
import 'package:electride_user/Screens/Language_select_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: GestureDetector(
          child: Image.asset(
            'assets/logo/Electride_logo_vertical_name.png',
            width: width * 0.8,
          ),
          onTap: (){
            Navigator.of(context).pushNamed(LanguageSelectScreen.Route);
          },
        ),
      ),
    );
  }
}
