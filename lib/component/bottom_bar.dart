import 'package:flutter/material.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:food_express/screen/home.dart';
import 'package:food_express/screen/my_account.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  // int currentIndex;
  //
  // @override
  // void initState() {
  //   super.initState();
  //
  //   currentIndex = 0;
  // }

  // changePage(int index) {
  //   setState(() {
  //     currentIndex = index;
  //   });
  // }

  int _selectedTab = 0;
  final _pageOptions = [
    Home(),
    Home(),
    Account(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: _pageOptions[_selectedTab],
      backgroundColor: Colors.grey[100],
      bottomNavigationBar: BubbleBottomBar(
        opacity: 0.2,
        backgroundColor: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16.0),
        ),
        // currentIndex: currentIndex,
        currentIndex: _selectedTab,
        hasInk: true,
        inkColor: Colors.black12,

        onTap: (int index) {
          setState(() {
            _selectedTab = index;
          });
        },
        items: [
          BubbleBottomBarItem(
            backgroundColor: Colors.green.shade200,
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.green,
            ),
            activeIcon: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.green,
            ),
            title: Text(
              'My Orders',
              style: TextStyle(color: Colors.black),
            ),
          ),
          BubbleBottomBarItem(
            backgroundColor: Colors.green.shade200,
            icon: Icon(
              Icons.check_box_outline_blank_sharp,
              color: Colors.green,
            ),
            activeIcon: Icon(
              Icons.check_box_outline_blank_sharp,
              color: Colors.green,
            ),
            title: Text(
              'My Products',
              style: TextStyle(color: Colors.black),
            ),
          ),
          BubbleBottomBarItem(
            backgroundColor: Colors.green.shade200,
            icon: Icon(
              Icons.person_outline,
              color: Colors.green,
            ),
            activeIcon: Icon(
              Icons.person_outline,
              color: Colors.green,
            ),
            title: Text(
              'My Account',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
