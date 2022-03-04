import 'dart:io';

import 'package:electride_user/constants/constants.dart';
import 'package:electride_user/widgets/common_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:provider/provider.dart';

import '../common.dart';
import 'OtpScreen.dart';

DateTime currentBackPressTime;
TextEditingController phoneController = TextEditingController();

class LoginScreen extends StatefulWidget {
  static const Route = "login";
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  PhoneNumber number = PhoneNumber(isoCode: 'IN');
  String initialCountry = 'IN';
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Material(
      child: Stack(
        children: [
          Positioned(
              child: Container(
            height: height * 0.25,
            width: width,
            decoration: BoxDecoration(
              color: kBlueColor,
            ),
            child: Stack(
              children: [
                Center(
                  child: Image.asset(
                    "assets/logo/Electride_logo_vertical_white.png",
                    height: height * 0.2,
                    color: Colors.white.withOpacity(0.1),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 64.0, left: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 32.0),
                        child: Text(
                          "Enter Mobile number",
                          style: TextStyle(
                              fontSize: 32,
                              color: kWhiteColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 32.0, top: 8),
                        child: Text(
                          "Please verify your mobile number we'll send OTP to this number",
                          style: TextStyle(
                              fontSize: 16,
                              color: kWhiteColor.withOpacity(0.8)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
          Positioned(
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                leading: IconButton(
                    color: kWhiteColor,
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              ),
              backgroundColor: Colors.transparent,
            ),
          ),
          WillPopScope(
            child: Positioned(
              top: height * 0.25,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 70,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 32.0),
                      child: Container(
                        height: height * 0.1,
                        width: width * 0.8,
                        child: TextFormField(
                          focusNode: FocusNode(
                            onKey: (node, event) =>
                                Provider.of<CommonWidget>(context)
                                    .nextButton(context),
                          ),
                          controller: phoneController,
                          cursorColor: kGreenColor,
                          maxLength: 10,
                          style: TextStyle(
                            letterSpacing: 5,
                            fontSize: 24,
                            color: kGreenColor,
                          ),
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            counterText: "",
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.black,
                                )),
                            border: InputBorder.none,
                            hintText: "Enter your mobile ",
                            hintStyle: TextStyle(
                              letterSpacing: 0,
                              fontSize: 20,
                            ),
                            prefix: Text(
                              "🇮🇳 " + "+91 | ",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 32.0,
                        right: 32,
                        top: 8,
                      ),
                      child: RichText(
                          text: TextSpan(
                        children: [
                          TextSpan(
                            style: TextStyle(color: Colors.grey),
                            text: "By continuing, you agree to the",
                          ),
                          TextSpan(
                            text: " term",
                            style: TextStyle(color: Colors.blue),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print(" term");
                              },
                          ),
                          TextSpan(
                            text: " and",
                            style: TextStyle(color: Colors.grey),
                          ),
                          TextSpan(
                            text: " \n privacy poilicy",
                            style: TextStyle(color: Colors.blue),
                          ),
                          TextSpan(
                            text: "  of Electride.",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      )),
                    ),
                    SizedBox(
                      height: height * 0.3,
                    ),
                    Provider.of<CommonWidget>(context, listen: false)
                        .nextButton(context, () {
                      Navigator.of(context).pushNamed(OtpScreen.Route);
                    }, kGreenColor, "Next"),
                  ],
                ),
              ),
            ),
            onWillPop: () async {
              bool backStatus = onWillPop();
              if (backStatus) {
                exit(0);
              }
              return false;
            },
          ),
          // Positioned(
          //   child: Container(
          //     height: height * 0.6,
          //     width: width * 0.8,
          //     decoration: BoxDecoration(
          //       color: kWhiteColor,
          //       boxShadow: [
          //         BoxShadow(
          //             color: Colors.grey.shade300,
          //             spreadRadius: 1,
          //             blurRadius: 1,
          //             offset: Offset.zero),
          //       ],
          //     ),
          //   ),
          //   // top: height * 0.2,
          //   // left: width * 0.1,
          // ),
        ],
      ),
    );

    // SafeArea(
    //   child: Container(
    //     child: Scaffold(
    //       body: Stack(
    //         children: [
    //           Align(
    //             alignment: Alignment.topLeft,
    //             child: IconButton(
    //                 padding: EdgeInsets.only(top: 16, left: 16),
    //                 icon: Icon(Icons.arrow_back_ios),
    //                 color: kWhiteColor,
    //                 onPressed: () {
    //                   Navigator.pop(context);
    //                 }),
    //           ),
    //           Positioned(
    //             top: 0.0,
    //             left: 0.0,
    //             child: Container(
    //               height: height * 0.25,
    //               width: width,
    //               decoration: BoxDecoration(color: kBlueColor),
    //               child: Column(
    //                 //mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                 children: [
    //                   Image(
    //                     height: height * 0.2,
    //                     fit: BoxFit.fill,
    //                     images: AssetImage(
    //                         "assets/logo/Electride_logo_vertical_white.png"),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           ),
    //           Positioned(
    //             top: height * 0.3,
    //             left: 30,
    //             right: 30,
    //             child: Container(
    //               height: height * 0.6,
    //               width: width * 0.8,
    //               decoration: BoxDecoration(
    //                 borderRadius: BorderRadius.all(
    //                   Radius.circular(10),
    //                 ),
    //                 color: Colors.grey.shade200,
    //               ),
    //               child: Column(
    //                 children: [
    //                   SizedBox(height: height * 0.15),
    //                   TextField(),
    //                   Container(
    //                     padding: EdgeInsets.only(left: 16),
    //                     decoration: BoxDecoration(
    //                       color: Colors.grey,
    //                       borderRadius: BorderRadius.all(
    //                         Radius.circular(10),
    //                       ),
    //                     ),
    //                     child: TextFormField(
    //                       enabled: true,
    //                       style: TextStyle(color: Colors.black),
    //                       cursorColor: kGreenColor,
    //                       decoration: InputDecoration(
    //                           contentPadding: EdgeInsets.all(14)),
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           ),
    //           WillPopScope(
    //             child: Positioned(
    //               child: Scaffold(
    //                 backgroundColor: Colors.transparent,
    //                 body: ListView(
    //                   shrinkWrap: true,
    //                   children: [
    //                     // Text(
    //                     //   "Enter your mobile number",

    //                     //   //AppLocalizations.of(context).enterYourMobileNo,
    //                     //   style: TextStyle(color: Colors.white, fontSize: 24),
    //                     // ),
    //                     // Image(
    //                     //   fit: BoxFit.fill,
    //                     //   images: AssetImage(
    //                     //       "assets/logo/Electride_logo_vertical_name.png"),
    //                     // ),
    //                     // Padding(
    //                     //   padding: const EdgeInsets.only(left: 48, top: 24),
    //                     //   child: Row(
    //                     //     children: [],
    //                     //   ),
    //                     // ),
    //                   ],
    //                 ),
    //               ),
    //             ),
    //             onWillPop: () async {
    //               bool backStatus = onWillPop();
    //               if (backStatus) {
    //                 exit(0);
    //               }
    //               return false;
    //             },
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }

  onWillPop() {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime) > Duration(seconds: 2)) {
      currentBackPressTime = now;
      Fluttertoast.showToast(
        msg: 'Press Back Once Again to Exit.',
        backgroundColor: Colors.black,
        textColor: Colors.white,
      );
      return false;
    } else {
      return true;
    }
  }
}
