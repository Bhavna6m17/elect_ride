import 'package:electride_user/common.dart';
import 'package:flutter/material.dart';

class DeliveryItem extends StatefulWidget {
  const DeliveryItem({Key key}) : super(key: key);

  @override
  _DeliveryItemState createState() => _DeliveryItemState();
}

class _DeliveryItemState extends State<DeliveryItem> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    // TextEditingController workController = TextEditingController();
    Material(
        child: Positioned(
        child: Container(
        height: height * 0.25,
          width: width,

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

  ],),
              ),],
                ),
              ),
        ),
        );

  }
Widget textfield(BuildContext context,TextEditingController controller,String hint) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextField(

      controller: controller,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(top: 15, bottom: 6, left: 10),
          border: const OutlineInputBorder(),
          labelText: hint
      ),
    ),
  );
}
  }