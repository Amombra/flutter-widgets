import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LogoFade extends StatefulWidget {
  @override
  createState() => LogoFadeState();
}

class LogoFadeState extends State<LogoFade> {
  double niveau = 1;

  void _varaiableOpacity() {
    setState(() => niveau = niveau == 0 ? 1.0 : 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("AnimatedOpacity"),
      ),
      backgroundColor: Colors.white24,
      body: Center(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         AnimatedOpacity(
          opacity: niveau,
          duration: Duration(seconds: 3),
          child: moncontenu(),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            
          ),
          child:Column(
              children: <Widget>[
                 RaisedButton(
                  padding: EdgeInsets.only(right: 90, left: 90, top: 30, bottom: 30),
                  child: Text("CLIQUEZ ICI",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                onPressed: _varaiableOpacity,
                color: Colors.white,
              ),

              RaisedButton(
                child: Text("Description",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
                ),
                color: Colors.white,
                onPressed: _launchURL,
                ),
              ],
          ),
        ),
      ],
    ),
    ),
    );
  }

  Widget moncontenu(){
    return Container(
      margin: EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Colors.pinkAccent,
        borderRadius: BorderRadius.circular(100),
      ),
      padding: EdgeInsets.all(15),
      height: 180,
      width: 180,
      child: Center(
        child:Column(
          mainAxisAlignment:  MainAxisAlignment.center,
          children: <Widget>[
             Text("I have a dream !",
            textAlign: TextAlign.center,
            style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
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