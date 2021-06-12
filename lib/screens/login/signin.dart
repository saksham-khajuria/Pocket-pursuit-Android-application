import 'package:PP/services/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(20, 100, 0, 0),
            child: Text(
              'Pocket\nPursuit',
              style: TextStyle(
                fontFamily: 'Helvetica',
                color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'EMAIL',
              labelStyle: TextStyle(
                  fontFamily: 'Helvetica',
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'PASSWORD ',
              labelStyle: TextStyle(
                fontFamily: 'Helvetica',
                color: Colors.grey,
              ),
            ),
            obscureText: true,
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'NICK NAME ',
              labelStyle: TextStyle(
                fontFamily: 'Helvetica',
                color: Colors.grey,
              ),
            ),
          ),
          RaisedButton(
              child: Text(
                'LOGIN IN',
                style: TextStyle(fontFamily: 'Helvetica'),
              ),
              onPressed: () {}),
          Center(
            child: Text(
              'OR',
              style: TextStyle(
                fontFamily: 'Helvetica',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          RaisedButton(
              child: Text(
                'SIGN UP',
                style: TextStyle(fontFamily: 'Helvetica'),
              ),
              onPressed: () {})
        ],
      ),
    );
  }
}
