import 'package:croconile/footer.dart';
import 'package:croconile/main_drawer.dart';
import 'package:croconile/screens/packages/packages_page.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../size_configuration.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScreenConfig screenConfig;
  WidgetSize widgetSize;

  Column circleAva(String text) {
    return Column(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width * 0.2,
          height: widgetSize.heightCircleHomePage,
          child: Card(
            elevation: 10,
            child: Icon(
              Icons.airplanemode_active,
              color: Colors.blue[600],
              size: MediaQuery.of(context).size.width * 0.13,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Wrap(
          children: <Widget>[
            Text(
              "$text",
              style: TextStyle(
                fontSize: widgetSize.radiusText + 2,
                color: Colors.grey[600],
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    screenConfig = ScreenConfig(context);
    widgetSize = WidgetSize(screenConfig);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'images/logo-04.png',
              height: MediaQuery.of(context).size.height * 0.080,
              width: widgetSize.widthLogoAppBar,
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.add_shopping_cart,
              size: widgetSize.titleFontSize,
              color: Colors.lightBlueAccent,
            ),
            onPressed: () {},
          ),
        ],
      ),
      drawer: MainDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.asset('images/egypt1.jpg'),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1 / 4,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      circleAva("Free Testing"),
                      circleAva("Free Testing"),
                      circleAva("Free Testing"),
                      circleAva("Free Testing"),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1 / 4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      circleAva("Free Testting"),
                      circleAva("Free Testing"),
                      circleAva("Free Testing"),
                      circleAva("Free Testing"),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.040,
                  ),
                  Text(
                    "Egypt Private Tour Packages",
                    style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: widgetSize.titleFontSize,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 0,
                bottom: 40,
                left: 30,
                right: 30,
              ),
              child: Card(
                child: Column(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Image.asset(
                          'images/queen1.jpg',
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "14Day Egypt Grand Tours",
                          style: TextStyle(
                              color: Colors.grey[800],
                              fontSize: widgetSize.titleFontSize),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.6,
                            height: MediaQuery.of(context).size.height * 0.030,
                            child: Divider(
                              color: Colors.grey[900],
                            ),
                          ),
                        ),
                        Text(
                          "7 Days Standard Egypt Tour",
                          style: TextStyle(
                              letterSpacing: 1,
                              color: Colors.grey[700],
                              fontSize: widgetSize.descriptionFontSize),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "9 Day Depth Egypt Tour",
                          style: TextStyle(
                              letterSpacing: 1,
                              color: Colors.grey[700],
                              fontSize: widgetSize.descriptionFontSize),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "11 Day Egypt Tour ",
                          style: TextStyle(
                            letterSpacing: 1,
                            color: Colors.grey[700],
                            fontSize: widgetSize.descriptionFontSize,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 15,
                          ),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.4,
                            height: MediaQuery.of(context).size.height * 0.030,
                            child: Divider(
                              color: Colors.grey[900],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 1),
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  child: PackagesPage()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 20, top: 10),
                          child: Text(
                            "SEE MORE",
                            style: TextStyle(
                                color: Colors.lightBlueAccent,
                                fontSize: widgetSize.titleFontSize),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                elevation: 15,
              ),
            ),
            Footer(),
          ],
        ),
      ),
    );
  }
}
