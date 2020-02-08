import 'dart:convert';

import 'package:croconile/screens/blogposts/read_more_blog.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:http/http.dart' as http;
import 'model.dart';
import 'network.dart';

class TestTurki extends StatefulWidget {
  @override
  _TestTurkiState createState() => _TestTurkiState();
}

class _TestTurkiState extends State<TestTurki> {
  List<ServicesModelBlog> blogs = [];

  _getTopicBlogs() async {
    http.Response response = await http
        .get(Network.urlBlog, headers: {"Accept": "application/json"});

    var data = json.decode(response.body);
    for (var item in data) {
      ServicesModelBlog topicblog = ServicesModelBlog(
        id: 1,
        title: item["title"],
        mainImage: item["mainImage"],
        innerImage: item["innerImage"],
        description: item["description"],
        createdAt: item["created_at"],
        updatedAt: item["updated_at"],
      );
      blogs.add(topicblog);
    }
    return blogs;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
        future: _getTopicBlogs(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return Container(child: Text("Plase Wite.."));
          } else {
            return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index) {
                  return new Text(snapshot.data[index].title);
                });
          }
        },
      ),
    );
  }
}
