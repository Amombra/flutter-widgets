import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Posit extends StatefulWidget {
  @override
  createState() => PositState();
}

class PositState extends State<Posit> {
 
bool showMessage = false;


  @override
  Widget build(BuildContext context) {
    return 
       Scaffold(
         appBar: AppBar(
           backgroundColor: Colors.pink,
           title: Text("AnimatedPositioned")
         ),
         body: Stack(
      children: <Widget>[
        AnimatedPositioned(
          duration: Duration(seconds: 2),
          curve: Curves.easeInOutCirc,
          top: 75,
          left: 50,
          child: Container(
            height: 120,
            width: 250,
            color: Colors.blueAccent,
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
