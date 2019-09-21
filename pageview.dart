import 'package:flutter/material.dart';

class PageViews extends StatefulWidget {
  @override
  createState() =>PageViewsState();
}

class PageViewsState extends State<PageViews> {
 /*final controller = PageController(
   initialPage: 1,
 );*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PageView"),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Stack(
          children: <Widget>[
            Dismissible(key: Key(UniqueKey().toString()
            ),
            child: Container(
              color: Colors.lightGreen,
            ),
            ),

             Dismissible(key: Key(UniqueKey().toString()
            ),
            child: Container(
              color: Colors.orange,
            ),
            ),
             Dismissible(key: Key(UniqueKey().toString()
            ),
            child: Container(
              color: Colors.yellow,
            ),
            ),
          ],
        ),
      ),
      );
  }
}