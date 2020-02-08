import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/world.jfif'),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Image.asset(
                        'images/logo-04.png',
                        height: MediaQuery.of(context).size.height * 0.2,
                        width: MediaQuery.of(context).size.width * 1,
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 50, bottom: 0, left: 30, right: 30),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "ID",
                        labelStyle: TextStyle(
                          color: Colors.blue[500],
                          fontSize: 30,
                          height: 1.5,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        FlatButton(
                          onPressed: null,
                          child: Text(
                            "forget ID?",
                            style: TextStyle(
                              color: Colors.grey[500],
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {},
                    child: Text(
                      "LOGIN",
                      style: TextStyle(color: Colors.blue[600], fontSize: 20),
                    ),
                    color: Colors.grey[300],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 60),
                  ),
                 Padding(
                   padding: const EdgeInsets.only(top: 35,bottom: 25),
                   child: Text("you can find us on ",style: TextStyle(color: Colors.blue[500],fontSize: 30),),
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
