import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Richs extends StatefulWidget {
  @override
  createState() => RichsState();
}

class RichsState extends State<Richs> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("RichText"),
      ),
      backgroundColor: Colors.white,
      body:  Center(
      child: RichText(
      text: TextSpan(
        style: DefaultTextStyle.of(context).style,
        children: <TextSpan>[
          TextSpan(text: 
          "ANGELIC BIO la reference du bio, c'est chez An gelic Bio, la reference du bio, c'est chez An gelic Bio ,la reference du bio, c'est chez An gelic Bio la reference du bio, c'est chez An gelic Biola reference du bio, c'est chez An gelic Bio",
          
           style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20,
              color: Colors.white,
              backgroundColor: Colors.pink,
              textBaseline: TextBaseline.ideographic,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.wavy,
          )),
        ]
      ),
    ),
    ),
    );

  }
}
_launchURL() {
  launch('https://github.com/Amombra/flutter-widgets/edit/master/README.md');
}