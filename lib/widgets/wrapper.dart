import 'package:PP/screens/Personal/Personal.dart';
import 'package:PP/screens/homepage.dart';
import 'package:PP/screens/scanner/qrcode.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatefulWidget {
  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  int _currentIndex = 0;
  final List<Widget> tabs = [
    ScanHome(),
    CommonPage(),
    Personal(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: Color(0xff000000),
        selectedIconTheme: IconThemeData(
          size: 25,
          color: Colors.blueGrey,
        ),
        unselectedIconTheme: IconThemeData(
          color: Colors.white,
        ),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.scanner,
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list,
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_balance_wallet,
            ),
            title: Text(''),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
