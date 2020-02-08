import 'package:croconile/hexcolors/CustomColor.dart';
import 'package:croconile/screens/HomePage.dart';
import 'package:croconile/screens/about_us.dart';
import 'package:croconile/screens/blogposts/blog_page.dart';
import 'package:croconile/screens/contact_support.dart';
import 'package:croconile/screens/login_page.dart';
import 'package:croconile/screens/packages/packages_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 0.130,
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.05,
                      bottom: 0),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                        image: AssetImage('images/logo-04.png'),
                        fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Color(0xFF4DCBE1),
              child: ListView(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 0,
                      ),
                      ListTile(
                          leading: Icon(
                            Icons.home,
                            color: colorDrawerIcon,
                            size: 35,
                          ),
                          title: Text(
                            "Home",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onTap: () {
                            Navigator.of(context).pop();
                            Navigator.push(
                                context,
                                PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    child: HomePage()));
                          }),
                      ListTile(
                          leading: Icon(
                            Icons.perm_identity,
                            color: colorDrawerIcon,
                            size: 35,
                          ),
                          title: Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onTap: () {
                            Navigator.of(context).pop();
                            Navigator.push(
                                context,
                                PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    child: LoginPage()));
                          }),
                      ListTile(
                          leading: Icon(
                            Icons.card_travel,
                            color: colorDrawerIcon,
                            size: 35,
                          ),
                          title: Text(
                            "Packages",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onTap: () {
                            Navigator.of(context).pop();
                            Navigator.push(
                                context,
                                PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    child: PackagesPage()));
                          }),
                      ListTile(
                          leading: Icon(
                            Icons.favorite,
                            color: colorDrawerIcon,
                            size: 35,
                          ),
                          title: Text(
                            "Your Wish List",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onTap: () {
                            Navigator.of(context).pop();
                            Navigator.push(
                                context,
                                PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    child: HomePage()));
                          }),
                      ListTile(
                          leading: Icon(
                            Icons.av_timer,
                            color: colorDrawerIcon,
                            size: 35,
                          ),
                          title: Text(
                            "About Us",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onTap: () {
                            Navigator.of(context).pop();
                            Navigator.push(
                                context,
                                PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    child: AboutUs()));
                          }),
                      ListTile(
                          leading: Icon(
                            Icons.location_on,
                            color: colorDrawerIcon,
                            size: 35,
                          ),
                          title: Text(
                            "Travel Tools",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onTap: () {}),
                      ListTile(
                          leading: Icon(
                            Icons.settings,
                            color: colorDrawerIcon,
                            size: 35,
                          ),
                          title: Text(
                            "Contact Support",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onTap: () {
                            Navigator.of(context).pop();
                            Navigator.push(
                                context,
                                PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    child: ContactSupport()));
                          }),
                      ListTile(
                          leading: Icon(
                            Icons.panorama,
                            color: colorDrawerIcon,
                            size: 35,
                          ),
                          title: Text(
                            "Blog",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onTap: () {
                            Navigator.of(context).pop();
                            Navigator.push(
                                context,
                                PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    child: Blog()));
                          }),
                    ],
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
