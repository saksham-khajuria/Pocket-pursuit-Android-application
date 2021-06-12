import 'package:PP/constants/newconstants2.dart';
import 'package:flutter/material.dart';
import 'package:PP/screens/Personal/Add_item.dart';
import 'package:PP/screens/Personal/Add_money.dart';

const PRIMARY = "primary";
const WHITE = "white";
const BLACK = "black";

const Map<String, Color> myColors = {
  PRIMARY: Color.fromRGBO(220, 220, 220, 1),
  WHITE: Color.fromRGBO(69, 90, 100, 1),
  BLACK: Colors.black,
};

class Personal extends StatefulWidget {
  @override
  _PersonalState createState() => _PersonalState();
}

class _PersonalState extends State<Personal> {
  ScrollController controller = ScrollController();
  bool closeTopContainer = false;
  double topContainer = 0;

  List<Widget> itemsData = [];

  void getPostsData() {
    List<dynamic> responseList = MONEY_DATA;
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
        body: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Text(
                'Personal',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.blueGrey[900],
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Helvetica',
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Additem()),
                      );
                    },
                    child: Container(
                        padding: EdgeInsets.all(10),
                        margin:
                            EdgeInsets.only(left: 20.0, right: 10.0, top: 20.0),
                        height: 120.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Image(
                          image: AssetImage('images/add-file.png'),
                        )),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Addmoney()),
                      );
                    },
                    child: Container(
                        margin:
                            EdgeInsets.only(left: 10.0, right: 20.0, top: 20.0),
                        height: 120.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Image(
                          image: AssetImage('images/money.png'),
                        )),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsetsDirectional.fromSTEB(30, 40, 0, 0),
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
        ));
  }
}
