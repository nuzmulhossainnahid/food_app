import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foode_app/food_details.dart';
import 'package:foode_app/home_screen.dart';

class PraimaryScreen extends StatefulWidget {
  static String id = 'PraimaryScreen';
  @override
  _PraimaryScreenState createState() => _PraimaryScreenState();
}

class _PraimaryScreenState extends State<PraimaryScreen> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    Widget child;
    switch (_index) {
      case 0:
        child = HomeScreen();
        break;
      case 1:
        child = null;
        break;
      case 2:
        child = null;
        break;
      case 3:
        child = null;
        break;
    }
    return Scaffold(
      body: SizedBox.expand(child: child),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (newIndex) => setState(() => _index = newIndex),
        currentIndex: _index,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.purple,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Color(0xffffffff),
            icon: Image.asset('images/home.png'),
            title: Text(
              "Home",
              style: TextStyle(color: Color(0xffE522DB)),
            ),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'images/resturant.png',
            ),
            title: Text(
              "Restaurants",
              style: TextStyle(color: Color(0xffE522DB)),
            ),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('images/bargains.png'),
            title: Text(
              "Offers",
              style: TextStyle(color: Color(0xffE522DB)),
            ),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('images/profile.png'),
            title: Text(
              "Profile",
              style: TextStyle(color: Color(0xffE522DB)),
            ),
          ),
        ],
      ),
    );
  }
}
