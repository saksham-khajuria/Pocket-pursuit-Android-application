import 'package:flutter/material.dart';

class NotificationSettings extends StatefulWidget {
  @override
  _NotificationSettingsState createState() => _NotificationSettingsState();
}

class _NotificationSettingsState extends State<NotificationSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          IconButton(
              icon: Icon(
                Icons.arrow_back,
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
          Container(
            padding: EdgeInsets.fromLTRB(15, 15, 0, 50),
            child: Text(
              'Notifications',
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 28,
                fontWeight: FontWeight.w900,
                fontFamily: 'Helvetica',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
