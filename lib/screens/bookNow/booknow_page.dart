import 'package:croconile/footer.dart';
import 'package:croconile/screens/Reservaition/dataBookReservaition.dart';
import 'package:croconile/screens/bookNow/booking_now_fromDetails.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../size_configuration.dart';

class BookNow extends StatefulWidget {
  @override
  _BookNowState createState() => _BookNowState();
}

class _BookNowState extends State<BookNow> {
  ScreenConfig screenConfig;
  WidgetSize widgetSize;

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
              fit: BoxFit.contain,
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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.asset('images/Aswan.jpg'),
            Card(
              color: Colors.grey[100],
              margin: EdgeInsets.only(left: 20, right: 20, bottom: 15, top: 0),
              shape: RoundedRectangleBorder(
                borderRadius: const BorderRadius.all(Radius.circular(35)),
              ),
              elevation: 5,
              child: Container(
                padding:
                    EdgeInsets.only(top: 30, left: 5, bottom: 20, right: 5),
                alignment: Alignment.topLeft,
                width: MediaQuery.of(context).size.width,
                height: widgetSize.heightSmallCardBookNow,
//                color: Colors.grey[200],
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          "Egypt",
                          style:
                              TextStyle(color: Colors.grey[600], fontSize: 30),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Wrap(
                          children: <Widget>[
                            Text(
                              "TEST TEST TEST TEST TEST",
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: widgetSize.descriptionFontSize - 5,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        RaisedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                            Navigator.push(
                                context,
                                PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    child: ClickDateToBOOkNow()));
                          },
                          child: Text(
                            "1000",
                          ),
                          color: Colors.lightBlueAccent,
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                          ),
                          elevation: 10,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    RaisedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.rightToLeft,
                                child: BookingNowFromDetails()));
                      },
                      child: Text(
                        "BOOK NOW",
                        style: TextStyle(fontSize: 20, letterSpacing: 1),
                      ),
                      color: Colors.lightBlueAccent,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                      ),
                      elevation: 10,
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        IconButton(icon: Icon(Icons.star), onPressed: () {}),
                        IconButton(icon: Icon(Icons.star), onPressed: () {}),
                        IconButton(icon: Icon(Icons.star), onPressed: () {}),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.grey[100],
              shape: RoundedRectangleBorder(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 20),
              child: Container(
                alignment: Alignment.topLeft,
                width: MediaQuery.of(context).size.width,
                height: widgetSize.heightBigCardBookNow,
                margin: EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "OverView",
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: widgetSize.titleFontSize,
                      ),
                    ),
                    SizedBox(
                      width: 120,
                      height: 5,
                      child: Divider(
                        color: Colors.black,
                        height: 10,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Wrap(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(
                              "mlkdemsklemwklefnmklewfnm",
                              style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: widgetSize.descriptionFontSize),
                            ),
                            Text(
                              "mlkdemsklemwklefnmklewfnm",
                              style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: widgetSize.descriptionFontSize),
                            ),
                            Text(
                              "mlkdemsklemwklefnmklewfnm",
                              style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: widgetSize.descriptionFontSize),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Wrap(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Is This Tour For Me ?",
                              style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: widgetSize.titleFontSize - 3),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Experince : ",
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: widgetSize.descriptionFontSize + 5,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Tour Type :",
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: widgetSize.descriptionFontSize + 5,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Group Type : ",
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: widgetSize.descriptionFontSize + 5,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Activity Level : ",
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: widgetSize.descriptionFontSize + 5,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Quality :",
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: widgetSize.descriptionFontSize + 5,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Languages ",
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: widgetSize.descriptionFontSize + 5,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.add_circle_outline),
                                onPressed: () {},
                              ),
                              Text(
                                "Day 1 - ",
                                style: TextStyle(
                                  color: Colors.grey[800],
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              Text(
                                'sklmkldmklmwklsmefklsjd',
                                style: TextStyle(
                                    fontSize:
                                        widgetSize.descriptionFontSize - 3),
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.add_circle_outline),
                                onPressed: () {},
                              ),
                              Text(
                                "Day 1 - ",
                                style: TextStyle(
                                  color: Colors.grey[800],
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              Text(
                                'sklmkldmklmwklsmefklsj',
                                style: TextStyle(
                                    fontSize:
                                        widgetSize.descriptionFontSize - 3),
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.add_circle_outline),
                                onPressed: () {},
                              ),
                              Text(
                                "Day 1 - ",
                                style: TextStyle(
                                  color: Colors.grey[800],
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              Text(
                                'sklmkldmklmwklsmefklsjd',
                                style: TextStyle(
                                    fontSize:
                                        widgetSize.descriptionFontSize - 3),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Trip Video",
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: widgetSize.titleFontSize - 3,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Image.asset('images/cairo.jpg'),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Include & Exclude ',
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: widgetSize.titleFontSize - 5,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("ksamcklsddsjvisdfvfik"),
                            FlatButton(
                              onPressed: () {},
                              child: Text("YES"),
                              color: Colors.lightBlueAccent,
                              padding: EdgeInsets.symmetric(
                                  vertical: 1, horizontal: 15),
                              textColor: Colors.white,
                              splashColor: Colors.lightBlue,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("ksamcklsddsjvisdfvfik"),
                            FlatButton(
                              onPressed: () {},
                              child: Text("YES"),
                              color: Colors.lightBlueAccent,
                              padding: EdgeInsets.symmetric(
                                  vertical: 1, horizontal: 15),
                              textColor: Colors.white,
                              splashColor: Colors.lightBlue,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("ksamcklsddsjvisdfvfik"),
                            FlatButton(
                              onPressed: () {},
                              child: Text("NO"),
                              color: Colors.red,
                              padding: EdgeInsets.symmetric(
                                  vertical: 1, horizontal: 15),
                              textColor: Colors.white,
                              splashColor: Colors.redAccent,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Client Reviews",
                              style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: widgetSize.titleFontSize - 7),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Image.asset('images/Aswan.jpg'),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              elevation: 5,
            ),
            Footer()
          ],
        ),
      ),
    );
  }
}
