import 'package:electride_user/constants/constants.dart';
import 'package:electride_user/widgets/common_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:electride_user/Screens/MainScreen.dart';

import 'UserDetails.dart';

class OtpScreen extends StatefulWidget {
  static const Route = 'OtpScreen';

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController otpController = TextEditingController();
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size(width, height * 0.15),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Enter OTP here",
                  style: TextStyle(
                      color: kWhiteColor,
                      fontSize: 34,
                      fontWeight: FontWeight.bold),
                ),
                heightBox,
                Text(
                  "Please wait... \nYou'll recieve a one time password.",
                  style: TextStyle(
                      color: kWhiteColor.withOpacity(0.5),
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: kBlueColor,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 40.0,
          top: 40,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: height * 0.2,
              width: width * 0.8,
              child: TextFormField(
                controller: otpController,
                cursorColor: kGreenColor,
                maxLength: 6,
                style: TextStyle(
                  letterSpacing: 32,
                  fontSize: 32,
                  color: kGreenColor,
                ),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  fillColor: kGreenColor,
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  counterText: "",
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.grey,
                      )),
                  border: InputBorder.none,
                  hintText: "6 digit otp",
                  hintStyle: TextStyle(
                    letterSpacing: 3,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            heightBox,
            heightBox,
            Provider.of<CommonWidget>(context, listen: false)
                .nextButton(context, () {
              Navigator.of(context).pushNamed(UserDetails.Route);
            }, kGreenColor, "verify"),
          ],
        ),
      ),
    );
  }
}
