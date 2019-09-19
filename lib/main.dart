import 'package:flutter/material.dart';
import './pages/animatedlist.dart';
import './pages/animated.dart';
import './pages/animatedicon.dart';
import './pages/animatedopacity.dart';
import './pages/animatedpadding.dart';
import './pages/animatedpositioned.dart';
import './pages/stack.dart';
import './pages/indexstack.dart';
import './pages/limitedbox.dart';
import './pages/constrainedbox.dart';
import './pages/spacer.dart';
import './pages/aspectRatio.dart';
import './pages/richetext.dart';
import './pages/draggable.dart';
import './pages/mediaquery.dart';
import './pages/placeholder.dart';
import './pages/reorderablelistview.dart';
import './pages/home.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Les Widgets')),
        
        body: Homes(),
      ),
    );
  }
}
