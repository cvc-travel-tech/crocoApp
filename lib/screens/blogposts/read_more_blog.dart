import 'package:croconile/screens/blogposts/model.dart';
import 'package:flutter/material.dart';
import '../../footer.dart';
import '../../size_configuration.dart';

// ignore: must_be_immutable
class ReadMoreBlogPosts extends StatelessWidget {
  final ServicesModelBlog blog;

  ReadMoreBlogPosts(this.blog);

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
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(25),
                  width: MediaQuery.of(context).size.width * 1,
//                  height: MediaQuery.of(context).size.height * 2.5,
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
//                          child: Image(
//                            image: NetworkImage(
//                              blog.mainImage,
//                            ),
//                            height: 250,
//                            fit: BoxFit.contain,
//                          ),
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
                                  blog.title,
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: widgetSize.titleFontSize,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  alignment: Alignment.bottomLeft,
                                  margin: EdgeInsets.symmetric(horizontal: 7),
                                  padding: EdgeInsets.only(bottom: 10),
                                  child: Text(
                                    blog.createdAt,
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: widgetSize.descriptionFontSize,
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.bottomLeft,
                                  margin: EdgeInsets.symmetric(horizontal: 7),
                                  padding: EdgeInsets.only(bottom: 10),
                                  child: Text(
                                    blog.updatedAt,
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: widgetSize.descriptionFontSize,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 7),
                                  padding: EdgeInsets.only(bottom: 20),
                                  child: Text(
                                    blog.description,
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: widgetSize.descriptionFontSize,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Footer(),
          ],
        ),
      ),
    );
  }
}
