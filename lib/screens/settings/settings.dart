import 'package:PP/screens/settings/notificationsettings.dart';
import 'package:PP/screens/settings/report.dart';
import 'package:PP/services/auth.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  AuthService _authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   backgroundColor: Colors.blueGrey,
      //   title: Text('Settings'),
      // ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Container(
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(15, 0, 0, 40),
            child: Text(
              'Settings',
              style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.blueGrey,
                fontSize: 28,
                fontWeight: FontWeight.w900,
                fontFamily: 'Helvetica',
              ),
            ),
          ),
          FlatButton(
            padding: EdgeInsets.all(0),
            onPressed: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => NotificationSettings()));
            },
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Text(
                    'Notifications',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Helvetica',
                    ),
                  ),
                ),
              ],
            ),
          ),
          FlatButton(
            padding: EdgeInsets.all(0),
            onPressed: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => Reportaproblem()));
            },
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Text(
                    'Report an Item',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Helvetica',
                    ),
                  ),
                ),
              ],
            ),
          ),
          FlatButton(
            padding: EdgeInsets.all(0),
            onPressed: () {},
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Text(
                    'About the App',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Helvetica',
                    ),
                  ),
                ),
              ],
            ),
          ),
          FlatButton(
            padding: EdgeInsets.all(0),
            onPressed: () {
              _authService.logout();
              Navigator.pop(context);
            },
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Text(
                    'Logout',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Helvetica',
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: Container(
              padding: EdgeInsets.all(18),
              decoration: BoxDecoration(
                  color: Colors.blueGrey[700],
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              height: 300,
              width: 350,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: CircleAvatar(
                      //backgroundImage:
                      // AssetImage('assets/SharedScreenshot.jpg'),
                      backgroundColor: Colors.blueGrey[900],
                      radius: 30,
                    ),
                  ),
                  Text(
                    'Name',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    'Shubham Gupta',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Text(
                    'Roll no.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                  SizedBox(
                    height: 3.0,
                  ),
                  Text(
                    '11912061',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Registered Items',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                  SizedBox(
                    height: 3.0,
                  ),
                  Text(
                    '2',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
