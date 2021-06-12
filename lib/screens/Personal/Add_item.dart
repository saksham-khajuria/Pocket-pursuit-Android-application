import 'package:PP/screens/scanner/qrscan.dart';
import 'package:flutter/material.dart';
import 'package:PP/screens/Personal/Personal.dart';

class Additem extends StatefulWidget {
  @override
  AdditemState createState() => AdditemState();
}

class AdditemState extends State<Additem> {
  var _things = [
    'Cricket Bat',
    'Pan',
    'Shuttle Cock',
  ];
  var currentItemSelected = 'Pan';
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blueGrey,
        child: Text(
          'Transfer',
          style: TextStyle(
            fontFamily: 'Helvetica',
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            IconButton(
              icon: new Icon(
                Icons.arrow_back,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            Container(
              padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Text(
                'Add Item',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.blueGrey,
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Helvetica',
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                  padding: EdgeInsets.all(15.0),
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.blueGrey, width: 3.0),
                      borderRadius: BorderRadius.circular(20.0)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => ScanPage()));
                  },
                  child: Text(
                    "Register Item",
                    style: TextStyle(
                        fontFamily: 'Helvetica',
                        fontSize: 17,
                        color: Colors.blueGrey),
                  ),
                ),
                Text(
                  "OR",
                  style: TextStyle(fontFamily: 'Helvetica'),
                ),
                DropdownButton<String>(
                  items: _things.map((String dropDownListItem) {
                    return DropdownMenuItem<String>(
                      child: Text(dropDownListItem),
                      value: dropDownListItem,
                    );
                  }).toList(),
                  onChanged: (String newValueSelected) {
                    setState(() {
                      this.currentItemSelected = newValueSelected;
                    });
                  },
                  value: currentItemSelected,
                )
              ],
            ),
            SizedBox(
              height: 70,
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
