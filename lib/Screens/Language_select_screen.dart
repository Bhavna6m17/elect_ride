import 'package:electride_user/Screens/LoginScreen.dart';
import 'package:electride_user/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LanguageSelectScreen extends StatefulWidget {
  static const Route = 'language';
  @override
  _LanguageSelectScreenState createState() => _LanguageSelectScreenState();
}

class _LanguageSelectScreenState extends State<LanguageSelectScreen> {
  @override
  // void initState() {
  //   // TODO: implement initState
  //   //print("========${ AppLocalizations.of(context).enterYourMobileNo}");
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.1,
            ),
            Center(
              child: Text(
                "Pick Your Language",
                style: TextStyle(
                    fontSize: 35,
                    color: kBlueColor,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: height * 0.1,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(LoginScreen.Route);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                height: height * 0.2,
                width: width * 0.4,
                child: Center(
                  child: Text(
                    // AppLocalizations.of(context).enterYourMobileNo,

                    "English",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.1,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.lightGreen,
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              height: height * 0.2,
              width: width * 0.4,
              child: Center(
                child: Text(
                  "Hindi",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
