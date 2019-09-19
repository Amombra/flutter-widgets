import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Aspects extends StatefulWidget {
  @override
  createState() => AspectsState();
}

class AspectsState extends State<Aspects> {


  @override
  Widget build(BuildContext context) {
    return  
        Expanded(
        flex: 1,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: AspectRatio(
                aspectRatio: 3/2,
                child:Container(
                  height: 250,
                  width: 300,
                  color: Colors.orange,
                ),
              ),
            ),
          );
  }
}
_launchURL() {
  launch('https://github.com/Amombra/flutter-widgets/edit/master/README.md');
}