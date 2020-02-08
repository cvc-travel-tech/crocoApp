import 'package:flutter/material.dart';
import './size_configuration.dart';
class Footer extends StatefulWidget {

  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  hexCode (String colorHexCode){
    String newColor = '0xff' + colorHexCode;
    newColor = newColor.replaceAll("#", "");
    int intColor = int.parse(newColor);
    return intColor;
  }
  ScreenConfig screenConfig;
  WidgetSize widgetSize;

  @override
  Widget build(BuildContext context) {
    screenConfig = ScreenConfig(context);
    widgetSize = WidgetSize(screenConfig);
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.033,
        left: MediaQuery.of(context).size.width * 0.033,
        right: MediaQuery.of(context).size.width * 0.033,
        bottom: 0,
      ),
      height: widgetSize.footerHeight,
      width: double.infinity,
      color: Color(hexCode('#4DCBE1')),
      child: Column(
        children: <Widget>[
          Text(
            "FIND & FOLLOW US",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: widgetSize.titleFontSize),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                  iconSize: MediaQuery.of(context).size.width * 0.18,
                  icon: Image.asset('images/social-05.png',),
                  onPressed: (){}
              ),
              IconButton(
                  iconSize: MediaQuery.of(context).size.width * 0.18,
                  icon: Image.asset('images/social-07.png',),
                  onPressed: (){}
              ),
              IconButton(
                  iconSize: MediaQuery.of(context).size.width * 0.18,
                  icon: Image.asset('images/social-08.png',),
                  onPressed: (){}
              ),
              IconButton(
                  iconSize: MediaQuery.of(context).size.width * 0.18,
                  icon: Image.asset('images/social-06.png',),
                  onPressed: (){}
              ),
            ],
          ),
          SizedBox(height: 5,),
          Text(
            "Tel: +02 012 21 23 25 04",
            style: TextStyle(
                color: Colors.white,
                fontSize: widgetSize.footerText,
                fontWeight: FontWeight.w600),
          ),
          Text(
            "Email : info@cvc.vacations ",
            style: TextStyle(
                color: Colors.white,
                fontSize: widgetSize.footerText,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Text(
            "Address : 11 Aladeeb Ali",
            style: TextStyle(
                color: Colors.white,
                fontSize: widgetSize.footerText,
                fontWeight: FontWeight.w600),
          ),
          Text(
            "Adham Sheraton",
            style: TextStyle(
                color: Colors.white,
                fontSize: widgetSize.footerText,
                fontWeight: FontWeight.w600),
          ),
          Text(
            "Heliopolis ,Cairo, Egyp",
            style: TextStyle(
                color: Colors.white,
                fontSize: widgetSize.footerText,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: Divider(
              color: Colors.white,
              height: 10,
            ),
          ),
          Text(
            "CopyRight @ All Rights Reserved",
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
