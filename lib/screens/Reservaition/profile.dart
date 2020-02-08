import 'package:flutter/material.dart';
import '../../size_configuration.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  ScreenConfig screenConfig;
  WidgetSize widgetSize;
  @override
  Widget build(BuildContext context) {
    screenConfig = ScreenConfig(context);
    widgetSize = WidgetSize(screenConfig);
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
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
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    margin: EdgeInsets.only(bottom: 20, top: 20),
                    width: double.infinity,
                    height: 40,
                    color: Color(0xFFDBDADA),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Name",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: widgetSize.descriptionFontSize + 5,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 50),
                            child: Text(
                              "ID",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: widgetSize.descriptionFontSize + 5,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Color(0xFFDBDADA),
                    width: double.infinity,
                    height: 45,
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
                        Padding(
                          padding: const EdgeInsets.only(right: 35),
                          child: Text(
                            "Price",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: widgetSize.descriptionFontSize + 4,
                            ),
                          ),
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
        ],
      ),
    );
  }
}
