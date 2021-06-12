import 'package:flutter/material.dart';
import 'package:PP/screens/Personal/Personal.dart';

class Addmoney extends StatefulWidget {
  @override
  AddmoneyState createState() => AddmoneyState();
}

class AddmoneyState extends State<Addmoney> {
  var _names = [
    'Select Name',
    'Shubham Gupta',
    'Aman Kant',
    'Saksham Khajuria',
  ];
  var currentNameselected = 'Select Name';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            IconButton(
              icon: Icon(
                Icons.arrow_back,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            Container(
              padding: EdgeInsets.fromLTRB(15, 0, 0, 40),
              child: Text(
                'Money',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.blueGrey,
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Helvetica',
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Text(
                    "Amount",
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontFamily: 'Helvetica',
                      fontSize: 22,
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Icon(Icons.arrow_forward),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Text(
                'Transfer Authority',
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontFamily: 'Helvetica',
                  fontSize: 22,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: DropdownButton<String>(
                items: _names.map((String dropDownNameItem) {
                  return DropdownMenuItem<String>(
                    child: Text(dropDownNameItem),
                    value: dropDownNameItem,
                  );
                }).toList(),
                onChanged: (String newNameSelected) {
                  setState(() {
                    this.currentNameselected = newNameSelected;
                  });
                },
                value: currentNameselected,
              ),
            )
          ],
        ),
      ),
    );
  }
}
