import 'package:croconile/hexcolors/CustomColor.dart';
import 'package:flutter/material.dart';
import '../../size_configuration.dart';
import 'dropdownList.dart';

class BookingNowFromDetails extends StatefulWidget {
  @override
  _BookingNowFromDetailsState createState() => _BookingNowFromDetailsState();
}

class _BookingNowFromDetailsState extends State<BookingNowFromDetails> {
  DropdownButton<String> androidDropdown() {
    var selectedCurrencyNights = '1';
    List<DropdownMenuItem<String>> dropdownItems = [];
    for (String currencyNights in nights) {
      var newItem = DropdownMenuItem(
        child: Text(currencyNights),
        value: currencyNights,
      );
      dropdownItems.add(newItem);
    }
    return DropdownButton<String>(
      value: selectedCurrencyNights,
      items: dropdownItems,
      onChanged: (value) {
        setState(() {
          selectedCurrencyNights = value;
        });
      },
    );
  }

  ScreenConfig screenConfig;
  WidgetSize widgetSize;

  @override
  Widget build(BuildContext context) {
    screenConfig = ScreenConfig(context);
    widgetSize = WidgetSize(screenConfig);
    return Scaffold(
      appBar: AppBar(
        title: Text("Booking Now"),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
        elevation: 10,
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.only(top: 20, bottom: 0, left: 17, right: 17),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Extend your Stay",
                  style: TextStyle(
                      color: colorBookingNowTitle,
                      fontSize: widgetSize.titleFontSize),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Add Pre-Accommodations?",
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    ),
                    Text(
                      "Add post-Accommodations?",
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      width: widgetSize.widthTextFieldRow,
                      height: widgetSize.heightTextFieldRow,
                      child: Card(
                        child: androidDropdown(),
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.grey[400]),
                        ),
                        margin: EdgeInsets.symmetric(horizontal: 10),
                      ),
                    ),
                    Container(
                      width: widgetSize.widthTextFieldRow,
                      height: widgetSize.heightTextFieldRow,
                      child: Card(
                        child: TextField(
                          onTap: () {},
                          decoration: InputDecoration(
                            filled: true,
                            hasFloatingPlaceholder: false,
                            hintText: "Nights",
                            border: InputBorder.none,
                            fillColor: Colors.white70,
                          ),
                        ),
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.grey[500]),
                        ),
                        margin: EdgeInsets.symmetric(horizontal: 10),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Number Of Traveler",
                      style: TextStyle(
                        color: colorBookingNowTitle,
                        fontSize: widgetSize.titleFontSize,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Room 1",
                      style: TextStyle(
                        color: colorBookingNowTitle,
                        fontSize: widgetSize.descriptionFontSize + 2,
                      ),
                    ),
                    Container(
                      height: widgetSize.heightTextFieldRow + 2,
                      child: Card(
                        child: TextField(
                          onTap: () {},
                          decoration: InputDecoration(
                            filled: true,
                            hasFloatingPlaceholder: false,
                            hintText: "Number of Rooms",
                            border: InputBorder.none,
                            fillColor: Colors.white70,
                          ),
                        ),
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.grey[500])),
                        margin: EdgeInsets.symmetric(horizontal: 10),
                      ),
                    ),
                    Container(
                      height: widgetSize.heightTextFieldRow + 2,
                      child: Card(
                        child: TextField(
                          onTap: () {},
                          decoration: InputDecoration(
                            filled: true,
                            hasFloatingPlaceholder: false,
                            hintText: "Type of Rooms",
                            border: InputBorder.none,
                            fillColor: Colors.white70,
                          ),
                        ),
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.grey[500])),
                        margin: EdgeInsets.symmetric(horizontal: 10),
                      ),
                    ),
                    Container(
                      height: widgetSize.heightTextFieldRow + 2,
                      child: Card(
                        child: TextField(
                          onTap: () {},
                          decoration: InputDecoration(
                            filled: true,
                            hasFloatingPlaceholder: false,
                            hintText: "Smoking or Not Smoking",
                            border: InputBorder.none,
                            fillColor: Colors.white70,
                          ),
                        ),
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.grey[500])),
                        margin: EdgeInsets.symmetric(horizontal: 10),
                      ),
                    ),
                    Container(
                      height: widgetSize.heightTextFieldRow + 2,
                      child: Card(
                        child: TextField(
                          onTap: () {},
                          decoration: InputDecoration(
                            filled: true,
                            hasFloatingPlaceholder: false,
                            hintText: "Add another room",
                            border: InputBorder.none,
                            fillColor: Colors.white70,
                          ),
                        ),
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.grey[500])),
                        margin: EdgeInsets.symmetric(horizontal: 10),
                      ),
                    ),
                    Text("idjvoi"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

///////
//Container(

//),
