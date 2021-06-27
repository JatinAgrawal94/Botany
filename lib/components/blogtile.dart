import 'package:flutter/material.dart';

class BlogTile extends StatelessWidget {
  final String imagePath;
  const BlogTile({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          // Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => ));
        },
        child: Container(
            margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
            padding: EdgeInsets.all(5),
            // width: MediaQuery.of(context).size.width,
            // height: 200,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(5)),
            child: Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: 150,
                  child: Image(
                    width: MediaQuery.of(context).size.width,
                    image: AssetImage(imagePath),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'TITLE',
                      style: TextStyle(fontSize: 30),
                    ),
                    Text("date")
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[Text('description')],
                )
              ],
            )));
  }
}
