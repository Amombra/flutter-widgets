import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Places extends StatefulWidget {
  @override
  createState() => PlacesState();
}

class PlacesState extends State<Places> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Plaaceholder"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height:40),
            Placeholder(
              color: Colors.orange,
              strokeWidth: 4,
              fallbackWidth: 100,
              fallbackHeight: 100,
            ),
            SizedBox(height: 60),
            Container(
              constraints: BoxConstraints.expand(height: 100, width: MediaQuery.of(context).size.width,),
              child: Placeholder(
                color: Colors.pink,
                strokeWidth: 4,
                fallbackWidth: 10,
                fallbackHeight: 100,
              ),
            ),

             SizedBox(height: 60),
            Container(
              constraints: BoxConstraints.expand(height: 100, width: MediaQuery.of(context).size.width,),
              child: Placeholder(
                color: Colors.green,
                strokeWidth: 4,
                fallbackWidth: 10,
                fallbackHeight: 100,
              ),
            ),

          ],
        ),
      ),
    );
  } 
}
_launchURL() {
  launch('https://github.com/Amombra/flutter-widgets/edit/master/README.md');
}