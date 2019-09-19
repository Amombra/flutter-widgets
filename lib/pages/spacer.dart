import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Spacerss extends StatefulWidget {
  @override
  createState() => SpacerssState();
}

class SpacerssState extends State<Spacerss> {
  void iniState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return 
      Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Spacer"),
           backgroundColor: Colors.pink,
        ),
        body:  moncontenu(),
      );
  }
  Widget moncontenu(){
    return Center(
      child: Column(
        children: <Widget>[
          Card(
            elevation: 15,
            child: Container(
              height: 150,
              width: 900,
              decoration: BoxDecoration(color: Colors.lightGreen),
              child: Center(child: Text("mon Card 1",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
              ),),
            ),
          ),
          Spacer(),
          Card(
            elevation: 15,
            child: Container(
              height: 150,
              width: 900,
              decoration: BoxDecoration(color: Colors.lightBlue),
              child: Center(child: Text("Mon Card 2", 
              style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20,
              ),
              ),),
            ),
          ),
          Spacer(),

          Card(
            elevation: 15,
            child: Container(
              height: 150,
              width: 900,
              decoration: BoxDecoration(color: Colors.yellow),
              child:Center(child: Text("Mon Card 2", 
              style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20,
              ),
              ),),
            ),
          ),
        ],
      ),
    );
  }
}
_launchURL() {
  launch('https://github.com/Amombra/flutter-widgets/edit/master/README.md');
}