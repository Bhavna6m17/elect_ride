import 'package:electride_user/common.dart';
import 'package:electride_user/constants/constants.dart';

class SearchLocation extends StatefulWidget {
  const SearchLocation({Key key}) : super(key: key);

  @override
  _SearchLocationState createState() => _SearchLocationState();
}

class _SearchLocationState extends State<SearchLocation> {
  var height;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     "Choose your Ride",
      //     style: TextStyle(
      //         color: kWhiteColor,
      //         fontSize: 24,
      //         fontWeight: FontWeight.bold),
      //   ),
      //   backgroundColor:Color(0xff232553),
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    icon:  Icon(Icons.home,
                      color: Color(0xff232553),),
                    border: UnderlineInputBorder(),
                    labelText: 'Enter your Pickup location'
                ),
              ),
            ),
            heightBox,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    icon:  Icon(Icons.search,
                      color: Color(0xff232553),
                    ),
                    border: UnderlineInputBorder(),
                    labelText: 'Enter your Destination location'
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
