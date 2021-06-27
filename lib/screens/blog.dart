import 'package:botany/components/blogtile.dart';
import 'package:botany/services/blogdata.dart';
import 'package:flutter/material.dart';

class Blog extends StatefulWidget {
  Blog({Key? key}) : super(key: key);
  @override
  _BlogState createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  BlogData blogdata = BlogData();

  void iniState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(30),
        child: ListView(
          children: <Widget>[
            BlogTile(
              imagePath: "assets/aloevera.jpg",
            ),
            BlogTile(
              imagePath: "assets/rose.jpg",
            ),
            BlogTile(
              imagePath: "assets/jasmine.jpg",
            ),
            BlogTile(
              imagePath: "assets/sunflower.jpg",
            ),
            BlogTile(
              imagePath: "assets/hibiscus.jpg",
            ),
          ],
        ));
  }
}
