import 'package:flutter/material.dart';

class Moneysingle extends StatefulWidget {
  @override
  _MoneysingleState createState() => _MoneysingleState();
}

class _MoneysingleState extends State<Moneysingle> {
   String name = "";
  final _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(225, 225, 225, 1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
           Container(
            padding: EdgeInsets.fromLTRB(5, 30, 0, 0),
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
            child: Text(
              'Money Single',
              style: TextStyle(
                color: Colors.black,
                fontSize: 28,
                fontWeight: FontWeight.w900,
                fontFamily: 'Helvetica',
              ),
            ),
          ), Container(
            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Color(0xff57BE70),
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[],
          )
        ],
      )
      
      
    );
  }
}