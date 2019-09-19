import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Constrains extends StatefulWidget {
  @override
  createState() => ConstrainsState();
}

class ConstrainsState extends State<Constrains> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("ConstrainedBox"),
      ),
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          moncontenu(),
        ],
      ),
     
    ),
    );
  }
  Widget moncontenu(){
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth:500,
         ),
         child:Container(
           height: 250,
           width: 200,
           child:  RaisedButton(
           child: Text("DELICIOUS CANDY",
           style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),),
           color: Colors.lightBlueAccent,
           onPressed: (){
           },
         ),
         ),
    );
  }
}

_launchURL() {
  launch('https://github.com/Amombra/flutter-widgets/edit/master/README.md');
}