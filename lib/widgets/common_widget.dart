import 'package:flutter/material.dart';

class CommonWidget extends ChangeNotifier {
  nextButton(
    BuildContext context, [
    GestureTapCallback onTap,
    Color color,
    String nameofButton,
  ]) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.only(left: 240),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: height * 0.07,
          width: width * 0.28,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: color,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                offset: Offset(2, 3),
                blurRadius: 2,
              ),
            ],
          ),
          child: Center(
            child: Text(
              nameofButton,
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
