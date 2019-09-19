import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class IndexdeSatck extends StatefulWidget {
  @override
  createState() => IndexdeSatckState();
}

class IndexdeSatckState extends State<IndexdeSatck> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("IndexStack"),
      ),
      body: Center(
      child: Column(
        children: <Widget>[
          IndexedStack(
            index: 0,
            children: <Widget>[
              moncontenu(),
              moncontenu_un(),
            ],
          ),
        ],
      ),
     
    ),
    );
  }
  Widget moncontenu(){
    return Container(
      margin: EdgeInsets.all(50),
      height: 430,
      width: 400,
      color: Colors.lightBlue,
    );
  }

    Widget moncontenu_un(){
    return Container(
      margin: EdgeInsets.all(50),
      height: 430,
      width: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.blue,
      ),
    );

    
  }
  
}

_launchURL() {
  launch('https://github.com/Amombra/flutter-widgets/edit/master/README.md');
}