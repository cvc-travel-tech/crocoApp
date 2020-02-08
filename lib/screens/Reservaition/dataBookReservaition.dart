import 'package:croconile/screens/Reservaition/MyReservation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../size_configuration.dart';

class ClickDateToBOOkNow extends StatefulWidget {
  @override
  _ClickDateToBOOkNowState createState() => _ClickDateToBOOkNowState();
}

class _ClickDateToBOOkNowState extends State<ClickDateToBOOkNow> {
  ScreenConfig screenConfig;
  WidgetSize widgetSize;
  @override
  Widget build(BuildContext context) {
    screenConfig = ScreenConfig(context);
    widgetSize = WidgetSize(screenConfig);
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      appBar: AppBar(
        title: Text("Click a Date to Book Online"),
        centerTitle: true,
        backgroundColor: Color(0XFF4DCBE1),
        elevation: 10,
      ),
      body: Wrap(
        children: <Widget>[
          Card(
            elevation: 15,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.elliptical(15, 20))),
            color: Colors.white,
            margin: EdgeInsets.only(top: 25, left: 15, right: 15, bottom: 10),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.75,
              child: ListView(
                children: <Widget>[
                  Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.all(16),
                    child: Text(
                      "Diamond   2020 Dates & Price",
                      style: TextStyle(
                          color: Color(0xFFC1C1C1),
                          fontSize: widgetSize.titleFontSize - 1),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    width: double.infinity,
                    height: 40,
                    color: Color(0xFFDBDADA),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Dates",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: widgetSize.descriptionFontSize + 5,
                          ),
                        ),
                        Text(
                          "Land Only",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: widgetSize.descriptionFontSize + 5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 30),
                    leading: Text("Jan 20",
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: widgetSize.descriptionFontSize + 5,
                        )),
                    trailing: Text(
                      "1000\$",
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: widgetSize.descriptionFontSize + 5,
                      ),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "(sold)",
                          style: TextStyle(color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 30),
                    leading: Text("Jan 20",
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: widgetSize.descriptionFontSize + 5,
                        )),
                    trailing: Text(
                      "1000\$",
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: widgetSize.descriptionFontSize + 5,
                      ),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "(sold)",
                          style: TextStyle(color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 30),
                    leading: Text("Jan 20",
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: widgetSize.descriptionFontSize + 5,
                        )),
                    trailing: Text(
                      "1000\$",
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: widgetSize.descriptionFontSize + 5,
                      ),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "(sold)",
                          style: TextStyle(color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 30),
                    leading: Text("Jan 20",
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: widgetSize.descriptionFontSize + 5,
                        )),
                    trailing: Text(
                      "1000\$",
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: widgetSize.descriptionFontSize + 5,
                      ),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "(sold)",
                          style: TextStyle(color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 30),
                    leading: Text("Jan 20",
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: widgetSize.descriptionFontSize + 5,
                        )),
                    trailing: Text(
                      "1000\$",
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: widgetSize.descriptionFontSize + 5,
                      ),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "(sold)",
                          style: TextStyle(color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 30),
                    leading: Text("Jan 20",
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: widgetSize.descriptionFontSize + 5,
                        )),
                    trailing: Text(
                      "1000\$",
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: widgetSize.descriptionFontSize + 5,
                      ),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "(sold)",
                          style: TextStyle(color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 30),
                    leading: Text("Jan 20",
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: widgetSize.descriptionFontSize + 5,
                        )),
                    trailing: Text(
                      "1000\$",
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: widgetSize.descriptionFontSize + 5,
                      ),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "(sold)",
                          style: TextStyle(color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 30),
                    leading: Text("Jan 20",
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: widgetSize.descriptionFontSize + 5,
                        )),
                    trailing: Text(
                      "1000\$",
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: widgetSize.descriptionFontSize + 5,
                      ),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "(sold)",
                          style: TextStyle(color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 30),
                    leading: Text("Jan 20",
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: widgetSize.descriptionFontSize + 5,
                        )),
                    trailing: Text(
                      "1000\$",
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: widgetSize.descriptionFontSize + 5,
                      ),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "(sold)",
                          style: TextStyle(color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 30),
                    leading: Text("Jan 20",
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: widgetSize.descriptionFontSize + 5,
                        )),
                    trailing: Text(
                      "1000\$",
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: widgetSize.descriptionFontSize + 5,
                      ),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "(sold)",
                          style: TextStyle(color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 30),
                    leading: Text("Jan 20",
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: widgetSize.descriptionFontSize + 5,
                        )),
                    trailing: Text(
                      "1000\$",
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: widgetSize.descriptionFontSize + 5,
                      ),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "(sold)",
                          style: TextStyle(color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 30),
                    leading: Text("Jan 20",
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: widgetSize.descriptionFontSize + 5,
                        )),
                    trailing: Text(
                      "1000\$",
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: widgetSize.descriptionFontSize + 5,
                      ),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "(sold)",
                          style: TextStyle(color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.rightToLeft,
                      child: MyReservation(),
                    ),
                  );
                },
                child: Text(
                  "Next",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
                color: Color(0xFF1BBC9B),
                padding: EdgeInsets.symmetric(horizontal: 70),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.elliptical(15, 20))),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
