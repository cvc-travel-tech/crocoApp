import 'package:croconile/screens/bookNow/booknow_page.dart';
import 'package:flutter/material.dart';
import '../../hexcolors/CustomColor.dart';
import '../../size_configuration.dart';
import 'package:rotated_corner_decoration/rotated_corner_decoration.dart';
import 'package:page_transition/page_transition.dart';

enum BottomType {
  group,
  startEnd,
}

class CardPackages extends StatefulWidget {
  final AssetImage image;

  CardPackages({this.image});

  @override
  _CardPackagesState createState() => _CardPackagesState();
}

class _CardPackagesState extends State<CardPackages> {
  BottomType selectedBottom;
  String titleCard = "";

  @override
  Widget build(BuildContext context) {
    ScreenConfig screenConfig;
    WidgetSize widgetSize;
    screenConfig = ScreenConfig(context);
    widgetSize = WidgetSize(screenConfig);
    return Padding(
      padding: const EdgeInsets.only(left: 40, right: 40, top: 30, bottom: 10),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5))),
        child: Column(
          children: <Widget>[
            Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                Image(image: widget.image),
                Positioned(
                  top: -3,
                  right: 0,
                  left: 0,
                  bottom: 0,
                  child: Container(
                    foregroundDecoration: RotatedCornerDecoration(
                      color: Colors.white,
                      geometry: const BadgeGeometry(
                          width: 90,
                          height: 70,
                          alignment: BadgeAlignment.topLeft),
                      textSpan: TextSpan(
                        text: '700',
                        style: TextStyle(
                          fontSize: 23,
                          color: Color(0xFF14B9D5),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      labelInsets: LabelInsets(
                        baselineShift: 3,
                        start: 1,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 8, left: 8, bottom: 0),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.060,
                  color: Colors.black54,
                  child: Text(
                    "14 Day Egypt Grand Tour",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: widgetSize.descriptionFontSize + 3,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                RawMaterialButton(
                  constraints: BoxConstraints.tightFor(
                    width: widgetSize.widthButtonPackages,
                    height: widgetSize.heightButtonPackages,
                  ),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      "Group:",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 19,
                      ),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      selectedBottom = BottomType.group;
                      titleCard =
                          "hhhhhhhhhhiwejfwioefiwehfuiwerhpfuierhguiher";
                    });
                  },
                  fillColor: selectedBottom == BottomType.group
                      ? colorButtonCardActive
                      : colorButtonCardInActive,
                  elevation: 5,
                ),
                RawMaterialButton(
                  constraints: BoxConstraints.tightFor(
                    width: widgetSize.widthButtonPackages,
                    height: widgetSize.heightButtonPackages,
                  ),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      "Start/End",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 19,
                      ),
                    ),
                  ),
                  elevation: 5,
                  onPressed: () {
                    setState(() {
                      selectedBottom = BottomType.startEnd;
                      titleCard = "Start:";
                    });
                  },
                  fillColor: selectedBottom == BottomType.startEnd
                      ? colorButtonCardActive
                      : colorButtonCardInActive,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Wrap(
                    children: <Widget>[
                      Text(titleCard),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: RaisedButton(
                    child: Text(
                      'DETAILS',
                      style: TextStyle(fontSize: 22, color: Colors.grey[500]),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.rightToLeft,
                              child: BookNow()));
                    },
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(
                      horizontal: 53,
                    ),
                    elevation: 3,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.020,
                ),
              ],
            ),
          ],
        ),
        elevation: 10,
      ),
    );
  }
}
