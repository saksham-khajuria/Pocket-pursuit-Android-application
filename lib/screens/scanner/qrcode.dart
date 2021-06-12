import 'package:flutter/material.dart';

import 'package:PP/screens/scanner/qrscan.dart';

class ScanHome extends StatefulWidget {
  @override
  _ScanHomeState createState() => _ScanHomeState();
}

class _ScanHomeState extends State<ScanHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(15, 0, 0, 40),
              child: Text(
                'Scanner',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.blueGrey[900],
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Helvetica',
                ),
              ),
            ),
            Center(
              child: Image(
                  height: 300,
                  image: NetworkImage(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/QR_code_for_mobile_English_Wikipedia.svg/1200px-QR_code_for_mobile_English_Wikipedia.svg.png')),
            ),
            flatButton("Scan QR CODE", ScanPage()),
          ],
        ),
      ),
    );
  }

  Widget flatButton(String text, Widget widget) {
    return Center(
      child: FlatButton(
        padding: EdgeInsets.all(15.0),
        onPressed: () {
          Navigator.push(
              context, new MaterialPageRoute(builder: (context) => widget));
        },
        child: Text(
          text,
          style: TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold),
        ),
        shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.blueGrey, width: 3.0),
            borderRadius: BorderRadius.circular(20.0)),
      ),
    );
  }
}
