import 'package:croconile/footer.dart';
import 'package:flutter/material.dart';
import '../size_configuration.dart';

class ContactSupport extends StatefulWidget {
  @override
  _ContactSupportState createState() => _ContactSupportState();
}

class _ContactSupportState extends State<ContactSupport> {
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
            Container(
              width: MediaQuery.of(context).size.width,
              height: widgetSize.heightCardContactUs,
//            alignment: Alignment.center,
              child: Card(
                elevation: 10,
                margin:
                    EdgeInsets.all(MediaQuery.of(context).size.width * 0.080),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Contact ",
                            style: TextStyle(
                              color: Colors.grey[500],
                              fontSize: widgetSize.titleFontSize,
                            ),
                          ),
                          Text(
                            "Us",
                            style: TextStyle(
                              color: Colors.lightBlueAccent,
                              fontSize: widgetSize.titleFontSize,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Image.asset('images/Aswan.jpg'),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.030,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        right: 20,
                        bottom: 10,
                      ),
                      child: Column(
                        children: <Widget>[
                          TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey[100],
                              hintText: "Enter Your Name",
                              hintStyle: TextStyle(
                                color: Colors.grey[400],
                              ),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(
                                  MediaQuery.of(context).size.width * 0.040),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.020,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey[100],
                              hintText: "Enter Your Phone".toString(),
                              hintStyle: TextStyle(
                                color: Colors.grey[400],
                              ),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(
                                  MediaQuery.of(context).size.width * 0.040),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.020,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey[100],
                              hintText: "Enter Your Email",
                              hintStyle: TextStyle(
                                color: Colors.grey[400],
                              ),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(
                                  MediaQuery.of(context).size.width * 0.040),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.020,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey[100],
                              counterText: "Write Some Information",
                              hintStyle: TextStyle(
                                color: Colors.grey[400],
                              ),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.090),
                            ),
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.020,
                          ),
                          RaisedButton(
                            onPressed: () {},
                            child: Text(
                              "Send",
                              style: TextStyle(color: Colors.white,
                                fontSize: widgetSize.titleFontSize - 5,
                                letterSpacing: 1
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: MediaQuery.of(context).size.width * 0.090,
                                vertical: MediaQuery.of(context).size.height * 0.001
                            ),
                            color: Colors.lightBlueAccent,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12),),),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Footer(),
          ],
        ),
      ),
    );
  }
}
