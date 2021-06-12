import 'package:PP/constants/newconstants.dart';
import 'package:PP/screens/scanner/qrcode.dart';
import 'package:PP/screens/settings/settings.dart';
import 'package:PP/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CommonPage extends StatefulWidget {
  @override
  _CommonPage createState() => _CommonPage();
}

class _CommonPage extends State<CommonPage> {
  ScrollController controller = ScrollController();
  bool closeTopContainer = false;
  double topContainer = 0;

  List<Widget> itemsData = [];

  void getPostsData() {
    List<dynamic> responseList = FOOD_DATA;
    List<Widget> listItems = [];
    responseList.forEach((post) {
      listItems.add(Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.black.withAlpha(40), blurRadius: 10.0),
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                post["name"],
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Text(
                post["brand"],
                style: const TextStyle(fontSize: 13, color: Colors.grey),
              ),
            ],
          )));
    });
    setState(() {
      itemsData = listItems;
    });
  }

  @override
  void initState() {
    super.initState();
    getPostsData();
    controller.addListener(() {
      double value = controller.offset / 119;

      setState(() {
        topContainer = value;
        closeTopContainer = controller.offset > 50;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Text(
                    'Pocket Pursuit',
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.blueGrey[700],
                      fontSize: 28,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Helvetica',
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(140, 0, 0, 0),
                  child: IconButton(
                      icon: Icon(
                        Icons.settings,
                        color: Colors.blueGrey[800],
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => Settings()));
                      }),
                )
              ],
            ),
            Container(
              margin: EdgeInsetsDirectional.fromSTEB(30, 10, 0, 0),
              child: Text(
                'ITEMS',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  fontFamily: 'Helvetica',
                ),
              ),
            ),
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                child: FittedBox(
                  fit: BoxFit.fill,
                  alignment: Alignment.topCenter,
                  child: Row(
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  title: Text(
                                    "Sorry! Occupied",
                                    style: TextStyle(
                                        color: Colors.red[900],
                                        fontFamily: 'Helvetica'),
                                  ),
                                  content: Text(
                                    'The Item are in the authority of  -  Shubham Gupta',
                                    style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontFamily: 'Helvetica'),
                                  ),
                                  actions: <Widget>[
                                    FlatButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text(
                                        'Ok',
                                        style: TextStyle(
                                          fontFamily: 'Helveetica',
                                          color: Colors.blueGrey[700],
                                        ),
                                      ),
                                    ),
                                    FlatButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            new MaterialPageRoute(
                                                builder: (context) =>
                                                    ScanHome()));
                                      },
                                      child: Text(
                                        "Request Queue",
                                        style: TextStyle(
                                          fontFamily: 'Helveetica',
                                          color: Colors.blueGrey[700],
                                        ),
                                      ),
                                    )
                                  ],
                                );
                              });
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Image(
                              image: AssetImage('images/chess-board.png')),
                          width: 100,
                          margin: EdgeInsets.only(right: 15),
                          height: 120,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0))),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  title: Text(
                                    "Sorry! Occupied",
                                    style: TextStyle(
                                        color: Colors.red[900],
                                        fontFamily: 'Helvetica'),
                                  ),
                                  content: Text(
                                    'The Item are in the authority of  -  Shubham Gupta',
                                    style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontFamily: 'Helvetica'),
                                  ),
                                  actions: <Widget>[
                                    FlatButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text(
                                        'Ok',
                                        style: TextStyle(
                                          fontFamily: 'Helveetica',
                                          color: Colors.blueGrey[700],
                                        ),
                                      ),
                                    ),
                                    FlatButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            new MaterialPageRoute(
                                                builder: (context) =>
                                                    ScanHome()));
                                      },
                                      child: Text(
                                        "Go to Scanner",
                                        style: TextStyle(
                                          fontFamily: 'Helveetica',
                                          color: Colors.blueGrey[700],
                                        ),
                                      ),
                                    )
                                  ],
                                );
                              });
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Image(
                              image: AssetImage('images/clothes-rack.png')),
                          width: 100,
                          margin: EdgeInsets.only(right: 15),
                          height: 120,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0))),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  title: Text(
                                    "Sorry! Occupied",
                                    style: TextStyle(
                                        color: Colors.red[900],
                                        fontFamily: 'Helvetica'),
                                  ),
                                  content: Text(
                                    'The Item are in the authority of  -  Shubham Gupta',
                                    style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontFamily: 'Helvetica'),
                                  ),
                                  actions: <Widget>[
                                    FlatButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text(
                                        'Ok',
                                        style: TextStyle(
                                          fontFamily: 'Helveetica',
                                          color: Colors.blueGrey[700],
                                        ),
                                      ),
                                    ),
                                    FlatButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            new MaterialPageRoute(
                                                builder: (context) =>
                                                    ScanHome()));
                                      },
                                      child: Text(
                                        "Go to Scanner",
                                        style: TextStyle(
                                          fontFamily: 'Helveetica',
                                          color: Colors.blueGrey[700],
                                        ),
                                      ),
                                    )
                                  ],
                                );
                              });
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Image(
                              image: AssetImage('images/badminton (1).png')),
                          width: 100,
                          margin: EdgeInsets.only(right: 15),
                          height: 120,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0))),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  title: Text(
                                    "Sorry! Occupied",
                                    style: TextStyle(
                                        color: Colors.red[900],
                                        fontFamily: 'Helvetica'),
                                  ),
                                  content: Text(
                                    'The Item is in the authority of  -  Shubham Gupta',
                                    style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontFamily: 'Helvetica'),
                                  ),
                                  actions: <Widget>[
                                    FlatButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text(
                                        'Ok',
                                        style: TextStyle(
                                          fontFamily: 'Helveetica',
                                          color: Colors.blueGrey[700],
                                        ),
                                      ),
                                    ),
                                    FlatButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            new MaterialPageRoute(
                                                builder: (context) =>
                                                    ScanHome()));
                                      },
                                      child: Text(
                                        "Go to Scanner",
                                        style: TextStyle(
                                          fontFamily: 'Helveetica',
                                          color: Colors.blueGrey[700],
                                        ),
                                      ),
                                    )
                                  ],
                                );
                              });
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Image(
                            image: AssetImage('images/football.png'),
                          ),
                          width: 100,
                          margin: EdgeInsets.only(right: 15),
                          height: 120,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0))),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsetsDirectional.fromSTEB(30, 5, 0, 0),
              child: Text(
                'PLACES',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  fontFamily: 'Helvetica',
                ),
              ),
            ),
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: FittedBox(
                  fit: BoxFit.fill,
                  alignment: Alignment.topCenter,
                  child: Row(
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  title: Text(
                                    "Sorry! Occupied",
                                    style: TextStyle(
                                        color: Colors.red[900],
                                        fontFamily: 'Helvetica'),
                                  ),
                                  content: Text(
                                    'The Item are in the authority of  -  Shubham Gupta',
                                    style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontFamily: 'Helvetica'),
                                  ),
                                  actions: <Widget>[
                                    FlatButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text(
                                        'Ok',
                                        style: TextStyle(
                                          fontFamily: 'Helveetica',
                                          color: Colors.blueGrey[700],
                                        ),
                                      ),
                                    ),
                                    FlatButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            new MaterialPageRoute(
                                                builder: (context) =>
                                                    ScanHome()));
                                      },
                                      child: Text(
                                        "Go to Scanner",
                                        style: TextStyle(
                                          fontFamily: 'Helveetica',
                                          color: Colors.blueGrey[700],
                                        ),
                                      ),
                                    )
                                  ],
                                );
                              });
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child:
                              Image(image: AssetImage('images/volleyball.png')),
                          width: 100,
                          margin: EdgeInsets.only(right: 15),
                          height: 120,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0))),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  title: Text(
                                    "Sorry! Occupied",
                                    style: TextStyle(
                                        color: Colors.red[900],
                                        fontFamily: 'Helvetica'),
                                  ),
                                  content: Text(
                                    'The Item are in the authority of  -  Shubham Gupta',
                                    style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontFamily: 'Helvetica'),
                                  ),
                                  actions: <Widget>[
                                    FlatButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text(
                                        'Ok',
                                        style: TextStyle(
                                          fontFamily: 'Helveetica',
                                          color: Colors.blueGrey[700],
                                        ),
                                      ),
                                    ),
                                    FlatButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            new MaterialPageRoute(
                                                builder: (context) =>
                                                    ScanHome()));
                                      },
                                      child: Text(
                                        "Go to Scanner",
                                        style: TextStyle(
                                          fontFamily: 'Helveetica',
                                          color: Colors.blueGrey[700],
                                        ),
                                      ),
                                    )
                                  ],
                                );
                              });
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Image(
                              image: AssetImage('images/washing-machine.png')),
                          width: 100,
                          margin: EdgeInsets.only(right: 15),
                          height: 120,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0))),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  title: Text(
                                    "Sorry! Occupied",
                                    style: TextStyle(
                                        color: Colors.red[900],
                                        fontFamily: 'Helvetica'),
                                  ),
                                  content: Text(
                                    'The Item are in the authority of  -  Shubham Gupta',
                                    style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontFamily: 'Helvetica'),
                                  ),
                                  actions: <Widget>[
                                    FlatButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text(
                                        'Ok',
                                        style: TextStyle(
                                          fontFamily: 'Helveetica',
                                          color: Colors.blueGrey[700],
                                        ),
                                      ),
                                    ),
                                    FlatButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            new MaterialPageRoute(
                                                builder: (context) =>
                                                    ScanHome()));
                                      },
                                      child: Text(
                                        "Go to Scanner",
                                        style: TextStyle(
                                          fontFamily: 'Helveetica',
                                          color: Colors.blueGrey[700],
                                        ),
                                      ),
                                    )
                                  ],
                                );
                              });
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child:
                              Image(image: AssetImage('images/badminton.png')),
                          width: 100,
                          margin: EdgeInsets.only(right: 15),
                          height: 120,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0))),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  title: Text(
                                    "Sorry! Occupied",
                                    style: TextStyle(
                                        color: Colors.red[900],
                                        fontFamily: 'Helvetica'),
                                  ),
                                  content: Text(
                                    'The Item are in the authority of  -  Shubham Gupta',
                                    style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontFamily: 'Helvetica'),
                                  ),
                                  actions: <Widget>[
                                    FlatButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text(
                                        'Ok',
                                        style: TextStyle(
                                          fontFamily: 'Helveetica',
                                          color: Colors.blueGrey[700],
                                        ),
                                      ),
                                    ),
                                    FlatButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            new MaterialPageRoute(
                                                builder: (context) =>
                                                    ScanHome()));
                                      },
                                      child: Text(
                                        "Go to Scanner",
                                        style: TextStyle(
                                          fontFamily: 'Helveetica',
                                          color: Colors.blueGrey[700],
                                        ),
                                      ),
                                    )
                                  ],
                                );
                              });
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Image(
                            image: AssetImage('images/cricket.png'),
                          ),
                          width: 100,
                          margin: EdgeInsets.only(right: 15),
                          height: 120,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0))),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsetsDirectional.fromSTEB(30, 10, 0, 0),
              child: Text(
                'LIVE STATUS',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  fontFamily: 'Helvetica',
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListView.builder(
                shrinkWrap: true,
                controller: controller,
                itemCount: itemsData.length,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  double scale = 1.0;
                  if (topContainer > 0.5) {
                    scale = index + 0.5 - topContainer;
                    if (scale < 0) {
                      scale = 0;
                    } else if (scale > 1) {
                      scale = 1;
                    }
                  }
                  return itemsData[index];
                }),
          ],
        ),
      ),
    );
  }
}
