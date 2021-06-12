import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';

class ScanPage extends StatefulWidget {
  @override
  _ScanPageState createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  String qrCodeResult = "Clothing Stand";
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
            Container(
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back),
              ),
            ),
            Center(
              child: Text(
                "Result",
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Center(
              child: Text(
                qrCodeResult,
                style: TextStyle(
                  fontSize: 20.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Center(
              child: FlatButton(
                padding: EdgeInsets.all(20.0),
                onPressed: () async {
                  String codeSanner =
                      await BarcodeScanner.scan(); //barcode scnner
                  setState(() {
                    qrCodeResult = codeSanner;
                  });
                },
                child: Text(
                  "Open Scanner",
                  style: TextStyle(
                      color: Colors.blueGrey, fontWeight: FontWeight.bold),
                ),
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.blueGrey, width: 3.0),
                    borderRadius: BorderRadius.circular(20.0)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
