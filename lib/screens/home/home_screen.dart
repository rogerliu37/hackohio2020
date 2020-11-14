import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/home/components/body.dart';
import 'package:shop_app/screens/tabs/homeTab.dart';
import 'package:shop_app/screens/tabs/listingTab.dart';
import 'package:shop_app/screens/tabs/profileTab.dart';
import 'package:shop_app/screens/tabs/searchTab.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  /*List of tabs*/
  final List<Widget> _children = [
    new SearchTab(),
    new HomeTab(),
    new ListingTab(),
    new ProfileTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      //Converted BottomTabBar
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        iconSize: 30.0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey[900],
        items: [
          //HomeTab
          BottomNavigationBarItem(
            title: new Text(""),
            icon: new Icon(Icons.home, color: Colors.grey),
            activeIcon: new Icon(Icons.home, color: Colors.white),
          ),
          //SearchTab
          BottomNavigationBarItem(
            title: new Text(""),
            icon: new Icon(Icons.search, color: Colors.grey),
            activeIcon: new Icon(Icons.search, color: Colors.white),
          ),
          //ListingTab
          BottomNavigationBarItem(
            title: new Text(""),
            icon: new Icon(Icons.add_box, color: Colors.grey),
            activeIcon: new Icon(Icons.add_box, color: Colors.white),
          ),
          //profile
          BottomNavigationBarItem(
            title: new Text(""),
            icon: new Icon(Icons.person, color: Colors.grey),
            activeIcon: new Icon(Icons.person, color: Colors.white),
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
