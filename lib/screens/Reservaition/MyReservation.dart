import 'package:croconile/screens/Reservaition/profile.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../size_configuration.dart';

class MyReservation extends StatefulWidget {
  @override
  _MyReservationState createState() => _MyReservationState();
}

class _MyReservationState extends State<MyReservation> {
  ScreenConfig screenConfig;
  WidgetSize widgetSize;
  @override
  Widget build(BuildContext context) {
    /// cheak box
    bool value1 = false;
    void onChangedValue(bool value) {
      setState(() {
        value1 = value;
      });
    }

    /// end here
    screenConfig = ScreenConfig(context);
    widgetSize = WidgetSize(screenConfig);
    return Scaffold(
      appBar: AppBar(
        title: Text("My Reservation"),
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
              height: MediaQuery.of(context).size.height * 0.70,
              child: ListView(
                children: <Widget>[
                  Container(
                    color: Color(0xFFDBDADA),
                    width: double.infinity,
                    height: 54,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "Flights",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: widgetSize.titleFontSize,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(16),
                    color: Colors.white,
                    width: double.infinity,
                    height: 110,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Domestic Flights",
                          style: TextStyle(
                            color: Color(0xFF4DCBE1),
                            fontSize: widgetSize.descriptionFontSize,
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                "Domestic Flights",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: widgetSize.descriptionFontSize,
                                ),
                              ),
                            ),
                            Checkbox(
                              value: value1,
                              onChanged: onChangedValue,
                              activeColor: Colors.grey,
                            ),
                            Text("Yes"),
                            Checkbox(
                              value: value1,
                              onChanged: onChangedValue,
                              activeColor: Colors.grey,
                            ),
                            Text("No"),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Color(0xFFC9C8C8),
                    width: double.infinity,
                    height: 45,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "Optional Tours",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: widgetSize.titleFontSize - 5,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: Color(0xFFDBDADA),
                    width: double.infinity,
                    height: 54,
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 80),
                            child: Text(
                              "Description",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: widgetSize.descriptionFontSize + 4,
                              ),
                            ),
                          ),
                          Text(
                            "Price",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: widgetSize.descriptionFontSize + 4,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 7),
                    leading: Padding(
                      padding: const EdgeInsets.only(top: 1),
                      child: Text("Sat, 09 May",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: widgetSize.descriptionFontSize,
                          )),
                    ),
                    trailing: Text(
                      "1000\$",
                      style: TextStyle(
                        color: Color(0xFF4DCBE1),
                        fontSize: widgetSize.descriptionFontSize + 4,
                      ),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Sound & Light Show",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 7),
                    leading: Padding(
                      padding: const EdgeInsets.only(top: 1),
                      child: Text("Sat, 09 May",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: widgetSize.descriptionFontSize,
                          )),
                    ),
                    trailing: Text(
                      "1000\$",
                      style: TextStyle(
                        color: Color(0xFF4DCBE1),
                        fontSize: widgetSize.descriptionFontSize + 4,
                      ),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Sound & Light Show",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 7),
                    leading: Padding(
                      padding: const EdgeInsets.only(top: 1),
                      child: Text("Sat, 09 May",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: widgetSize.descriptionFontSize,
                          )),
                    ),
                    trailing: Text(
                      "1000\$",
                      style: TextStyle(
                        color: Color(0xFF4DCBE1),
                        fontSize: widgetSize.descriptionFontSize + 4,
                      ),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Sound & Light Show",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 7),
                    leading: Padding(
                      padding: const EdgeInsets.only(top: 1),
                      child: Text("Sat, 09 May",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: widgetSize.descriptionFontSize,
                          )),
                    ),
                    trailing: Text(
                      "1000\$",
                      style: TextStyle(
                        color: Color(0xFF4DCBE1),
                        fontSize: widgetSize.descriptionFontSize + 4,
                      ),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Sound & Light Show",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 7),
                    leading: Padding(
                      padding: const EdgeInsets.only(top: 1),
                      child: Text("Sat, 09 May",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: widgetSize.descriptionFontSize,
                          )),
                    ),
                    trailing: Text(
                      "1000\$",
                      style: TextStyle(
                        color: Color(0xFF4DCBE1),
                        fontSize: widgetSize.descriptionFontSize + 4,
                      ),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Sound & Light Show",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 7),
                    leading: Padding(
                      padding: const EdgeInsets.only(top: 1),
                      child: Text("Sat, 09 May",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: widgetSize.descriptionFontSize,
                          )),
                    ),
                    trailing: Text(
                      "1000\$",
                      style: TextStyle(
                        color: Color(0xFF4DCBE1),
                        fontSize: widgetSize.descriptionFontSize + 4,
                      ),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Sound & Light Show",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 30, bottom: 20),
            alignment: Alignment.topRight,
            child: Text(
              "Total 3000\$",
              style: TextStyle(
                  color: Colors.red, fontSize: widgetSize.descriptionFontSize),
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
                      child: ProfilePage(),
                    ),
                  );
                },
                child: Text(
                  "Continue ",
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
