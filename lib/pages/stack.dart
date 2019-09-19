import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Stackes extends StatefulWidget {
  @override
  createState() => StackesState();
}

class StackesState extends State<Stackes> {
 
bool showMessage = false;


  @override
  Widget build(BuildContext context) {
    return 
       Scaffold(
         appBar: AppBar(
           title: Text("Stack"),
           backgroundColor: Colors.pink,
         ),
         backgroundColor: Colors.white,
         body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             Stack(
               alignment: AlignmentDirectional.centerEnd,
               fit: StackFit.loose,
               overflow: Overflow.clip,
               children: <Widget>[
                 content_one(),
                 content_three(),
                 content_two(),
                 content_four(),
               ],
             ),
           ],
         ),
    ),
       );
  }
    Widget content_one(){
      return Container(
        margin: EdgeInsets.all(50),
        height: 400,
        width: 380,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(100),
        ),
      );
    }

    Widget content_two(){
      return Container(
        margin: EdgeInsets.all(50),
        height: 300,
        width:190,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          ),
      );
    }

    Widget content_three(){
      return Container(
        margin: EdgeInsets.all(50),
        height: 350,
        width:220,
        decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(100),
          color: Colors.pink,
          ),
      );
    }
    Widget content_four(){
      return Container(
        margin: EdgeInsets.only(top: 125, left: 75),
        height: 140,
        width:140,
        decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(100),
          color: Colors.yellowAccent,
          ),
      );
    }

}
_launchURL() {
  launch('https://github.com/Amombra/flutter-widgets/edit/master/README.md');
}
