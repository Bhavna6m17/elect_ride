import 'package:electride_user/Screens/MainScreen.dart';
import 'package:electride_user/common.dart';
import 'package:electride_user/constants/constants.dart';
import 'package:electride_user/widgets/common_widget.dart';
import 'package:provider/provider.dart';

class UserDetails extends StatefulWidget {
  static const Route = "UserDetails";
  @override
  _UserDetailsState createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  String _chosenValue;
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size(width, height * 0.15),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 64.0),
            child: Stack(
              children: [
                Center(
                  child: Icon(
                    Icons.info_outline_rounded,
                    color: kWhiteColor.withOpacity(0.4),
                    size: 108,
                  ),
                ),
                Positioned(
                  top: 32,
                  bottom: -1,
                  left: 50,
                  child: Text(
                    "Complete Your Profile",
                    style: TextStyle(
                        color: kWhiteColor,
                        fontSize: 34,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: kBlueColor,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              heightBox,
              heightBox,
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(4.1),
                      ),
                    ),
                    labelText: "Name",
                    hintText: "Name",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(4.1),
                      ),
                    ),
                    labelText: "Email",
                    hintText: "Email",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: ageController,
                  maxLength: 2,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    counterText: "",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(4.1),
                      ),
                    ),
                    labelText: "Age",
                    hintText: "Age",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  padding: EdgeInsets.only(left: 8),
                  //alignment: Alignment.center,
                  width: width,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Colors.black.withOpacity(0.7),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(4.1),
                    ),
                  ),
                  // padding: const EdgeInsets.all(2.0),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    underline: Container(
                      height: 2,
                      color: kWhiteColor,
                    ),
                    value: _chosenValue,
                    //elevation: 5,
                    //style: TextStyle(color: Colors.black),
                    items: <String>[
                      'Male',
                      'Female',
                      'Other',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    hint: Row(
                      children: [
                        Text(
                          "Select your Gender",
                          style: TextStyle(
                            // color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    onChanged: (String value) {
                      setState(() {
                        _chosenValue = value;
                      });
                      print(_chosenValue);
                    },
                  ),
                ),
              ),
              heightBox,
              Provider.of<CommonWidget>(context, listen: false)
                  .nextButton(context, () {
                Navigator.pushReplacementNamed(context, MainScreen.Route);
              }, kGreenColor, "Finish"),
            ],
          ),
        ],
      ),
    );
  }
}
