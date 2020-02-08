import 'package:croconile/screens/HomePage.dart';
import 'package:croconile/screens/about_us.dart';
import 'package:croconile/screens/bookNow/booking_now_fromDetails.dart';
import 'package:croconile/screens/bookNow/booknow_page.dart';
import 'package:croconile/screens/contact_support.dart';
import 'package:croconile/screens/login_page.dart';
import 'package:croconile/screens/packages/packages_page.dart';
import 'package:croconile/screens/bookNow/secureBooking.dart';
import 'package:croconile/screens/splash_screen.dart';
import 'package:croconile/screens/bookNow/successfillyPage.dart';
import 'package:flutter/material.dart';

void main() => runApp(CroconileApp());

class CroconileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryIconTheme: IconThemeData(color: Colors.lightBlueAccent)),
      initialRoute: '/splash',
      routes: {
        '/splash': (_) => Splash(),
        '/home': (_) => HomePage(),
        '/PackagesPage': (_) => PackagesPage(),
        '/AboutUs': (_) => AboutUs(),
        '/Login': (_) => LoginPage(),
        '/ContactUS': (_) => ContactSupport(),
        '/BookNowDetails': (_) => BookNow(),
        '/BookingNow': (_) => BookingNowFromDetails(),
        '/secureBooking': (_) => SecureBooking(),
        'successfully': (_) => SuccessfullyPage(),
      },
    );
  }
}
