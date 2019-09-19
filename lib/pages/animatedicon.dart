import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class Animations extends StatefulWidget {
  @override
  _AnimationsState createState() => _AnimationsState();
}

class _AnimationsState extends State<Animations>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Icon Demo'),
        centerTitle: true,
      ),
      backgroundColor: Colors.pink,
      body: Container(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                iconSize: 50,
                icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow, color: Colors.white,),
                onPressed: () => _handleOnPressed(),
              ),
              IconButton(
                iconSize: 50,
                icon: AnimatedIcon(
                  icon: AnimatedIcons.play_pause,
                  progress: _animationController,
                ),
                onPressed: () => _handleOnPressed(),
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
      ),
    );
  }

_launchURL() {
  launch('https://github.com/Amombra/flutter-widgets/edit/master/README.md');
}

  void _handleOnPressed() {
    setState(() {
      isPlaying = !isPlaying;
      isPlaying
          ? _animationController.forward()
          : _animationController.reverse();
    });
  }
}