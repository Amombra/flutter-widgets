import 'package:flutter/material.dart';

class Transforms extends StatefulWidget {
  @override
  createState() =>TransformsState();
}

class TransformsState extends State<Transforms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transform"),
        backgroundColor: Colors.pink,
      ),
      body: PageView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
            

            ],
        ),
      );
  }
 /* Widget moncontenu(){
    return Container(
      height: 200,
      width: 300,
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(100),
          color: Colors.lightGreen,
          ),
    );
  }*/
}

