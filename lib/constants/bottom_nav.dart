import 'package:electride_user/Screens/Delivery_item.dart';
import 'package:electride_user/Screens/drawer.dart';
import 'package:electride_user/common.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  int _currentIndex = 0;
  final List _children = [
    PickDrop(),
    DeliveryItem(),
  ];
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('My Flutter App'),
        ),
        body: _children[_currentIndex], 
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped, 
          currentIndex: _currentIndex, 
          items: [
            new BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            new BottomNavigationBarItem(
              icon: Icon(Icons.mail),
              title: Text('Messages'),
            ),
            new BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text('Profile')
            )
          ],
        ),
      );
    }
  }
