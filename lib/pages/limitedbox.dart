import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Limied extends StatefulWidget {
  @override
  createState() => LimiedState();
}

class LimiedState extends State<Limied> {

  List<Color> randomColor = [
    Colors.orange,
    Colors.white,
    Colors.green,
    Colors.yellow,
    Colors.red,
    Colors.blueAccent
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title:Text("LimitedBox"),
      ),
      body: Center(
      child: Column(
        children: <Widget>[
          moncontenu(),
        ],
      ),
     
    ),
    );
  }
  Widget moncontenu(){
    return Container(
      margin: EdgeInsets.all(50),
      height: 400,
      width: 300,
      color: Colors.pink,
      child: LimitedBox(
        maxHeight: 150,
        maxWidth: 150,
        child:Column(
          children: <Widget>[
            Container(
            color: Colors.green,
            height: 80,
            width: 120,
        ),
        SizedBox(height: 20, width: 20,),
        Container(
            color: Colors.blueGrey,
            height: 80,
            width: 120,
        ),
        SizedBox(height: 20, width: 20,),
        Container(
            color: Colors.yellow,
            height: 80,
            width: 120,
        ),
        SizedBox(height: 20, width: 20,),
        Container(
            color: Colors.white,
            height: 80,
            width: 120,
        ),
          ],
        ), 
        
      ),
    );
  }

    Widget moncontenu_un(){
    return ListView(
      children: <Widget>[
        for (var i = 0; i < 10; i++)
        LimitedBox(
          maxHeight: 200,
          child: Container(
            color: Colors.red,
          ),
        ),
      ],
    );
  }
  
  _launchURL() {
  launch('https://github.com/Amombra/flutter-widgets/edit/master/README.md');
}
}