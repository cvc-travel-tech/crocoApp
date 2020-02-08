import 'package:croconile/footer.dart';
import 'package:croconile/screens/packages/cardPackages.dart';
import 'package:flutter/material.dart';
import 'package:croconile/size_configuration.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class PackagesPage extends StatefulWidget {
  @override
  _PackagesPageState createState() => _PackagesPageState();
}

class _PackagesPageState extends State<PackagesPage> {
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
            CardPackages(
              image: AssetImage("images/cairo.jpg"),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.050,
            ),
            Footer(),
          ],
        ),
      ),
    );
  }
}
