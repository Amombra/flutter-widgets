import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Medias extends StatefulWidget {
 
  @override
  createState() => MediasState();
}

class MediasState extends State<Medias> {
  final GlobalKey globalKey = GlobalKey();

  void _getWH() {
    final containerWidth = globalKey.currentContext.size.width;
    final containerHeight = globalKey.currentContext.size.height;
    print('Container widht is $containerWidth, height is $containerHeight');
 }

   @override
 Widget build(BuildContext context) {
 final size = MediaQuery.of(context).size;
 final width = size.width;
 final height = size.height;
 print('width is $width; height is $height');
 return Scaffold(
  appBar: AppBar(
    backgroundColor: Colors.pink,
    title: Text("MediaQuery"),
  ),
  body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text("MediaQuery"), 
      SizedBox(height: 20,),
      Container(
        key: globalKey,
        color: Colors.lightGreen,
        width: width / 2,
        height: height / 2,
        ),

    ],
  ),
  ),
  floatingActionButton: FloatingActionButton(
  onPressed: _getWH,
  child: Icon(Icons.adjust),
  ),
 );
 }
}
_launchURL() {
  launch('https://github.com/Amombra/flutter-widgets/edit/master/README.md');
}

