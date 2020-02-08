import 'dart:convert';
import 'package:croconile/footer.dart';
import 'package:croconile/screens/blogposts/model.dart';
import 'package:croconile/screens/blogposts/network.dart';
import 'package:croconile/screens/blogposts/read_more_blog.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:http/http.dart' as http;
import '../../size_configuration.dart';

class Blog extends StatefulWidget {
  @override
  _BlogState createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  ScreenConfig screenConfig;
  WidgetSize widgetSize;
  List<ServicesModelBlog> blogs = [];

  _getTopicBlogs() async {
    http.Response response = await http
        .get(Network.urlBlog /*, headers: {"Accept": "application/json"}*/);

    var data = json.decode(response.body);
    blogs.clear();
    for (var item in data) {
      ServicesModelBlog postBlog = ServicesModelBlog(
        id: item["id"],
        title: item["title"],
        mainImage: item["main_image"],
        innerImage: item["innerImage"],
        description: item["description"],
        createdAt: item["created_at"],
        updatedAt: item["updated_at"],
      );
      blogs.add(postBlog);
    }
    return blogs;
  }

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
      body: FutureBuilder(
        future: _getTopicBlogs(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return Center(child: Container(child: Text("Plase Wait....")));
          } else {
            return ListView.builder(
                itemCount: blogs.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(25),
                        width: 350,
                        height: 480,
                        child: Card(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "Home ",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 25,
                                      ),
                                    ),
                                    Text(
                                      "Posts",
                                      style: TextStyle(
                                        color: Color(0xFF447198),
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                child: Image(
                                  image: NetworkImage(
                                      'http://to-istanbultours.com/Tur/public/storage/tmp/uploads/22403135-25121164_1580213038.jpg'
//                                    snapshot.data[index].mainImage,
                                      ),
                                  height: 200,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Container(
                                  alignment: Alignment.topLeft,
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        snapshot.data[index].title,
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: widgetSize.titleFontSize,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.symmetric(horizontal: 7),
                                        child: Text(
                                          snapshot.data[index].description,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize:
                                                widgetSize.descriptionFontSize,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
//                                  width: 500,
//                                  height: 40,
                                        alignment: Alignment.bottomLeft,
                                        child: RaisedButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              PageTransition(
                                                type: PageTransitionType
                                                    .rightToLeft,
                                                child: ReadMoreBlogPosts(
                                                  snapshot.data[index],
                                                ),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            "Read More",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          color: Color(0xFF253D52),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(10),
                                            ),
                                          ),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 30),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                });
          }
        },
      ),
    );
  }
}
