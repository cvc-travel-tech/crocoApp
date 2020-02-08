import 'package:croconile/footer.dart';
import 'package:flutter/material.dart';

import '../size_configuration.dart';

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  ScreenConfig screenConfig;
  WidgetSize widgetSize;

  @override
  Widget build(BuildContext context) {
    Column setCard() {
      return Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 220,
            child: Card(
              color: Colors.grey[100],
              elevation: 5,
              margin: EdgeInsets.all(15),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.map,
                          size: 50,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Our ',
                          style: TextStyle(
                              color: Colors.lightBlueAccent,
                              fontSize: widgetSize.titleFontSize + 2,
                              letterSpacing: 1),
                        ),
                        Text(
                          'Mission',
                          style: TextStyle(
                              color: Colors.grey[500],
                              fontSize: widgetSize.titleFontSize + 3,
                              letterSpacing: 1),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Center(
                        child: Wrap(
                          children: <Widget>[
                            Text(
                              'Our team has many years of collective experience in tourism field. For more than 32 years,our staff had been working on understandingthe motivations and expectations motivations and expectations',
                              style: TextStyle(color: Colors.grey[600]),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(60))),
            ),
          ),
          SizedBox(
            height: 5,
          ),
        ],
      );
    }

    screenConfig = ScreenConfig(context);
    widgetSize = WidgetSize(screenConfig);
    return Scaffold(
//      drawer: MainDrawer(),
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
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "About ",
                    style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: widgetSize.titleFontSize + 5),
                  ),
                  Text(
                    "Us",
                    style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontSize: widgetSize.titleFontSize + 4),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, left: 40, right: 40, bottom: 30),
              child: Wrap(
                children: <Widget>[
                  Text(
                    'World\'s leading tour and travels Booking website,Over 30,000 packages worldwide. Book travel packages and enjoy your holidays with distinctive experience',
                    style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: widgetSize.titleFontSize - 5),
                  ),
                ],
              ),
            ),
            // TODO: card mission
            setCard(),
            setCard(),
            setCard(),
            setCard(),
            SizedBox(
              height: 20,
            ),
            Footer()
          ],
        ),
      ),
    );
  }
}
