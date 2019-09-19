import 'package:flutter/material.dart';
import 'animatedlist.dart';
import 'animatedicon.dart';
import 'animatedopacity.dart';
import 'animatedpadding.dart';
import 'animatedpositioned.dart';
import 'stack.dart';
import 'indexstack.dart';
import 'limitedbox.dart';
import 'constrainedbox.dart';
import 'spacer.dart';
import 'aspectRatio.dart';
import 'richetext.dart';
import 'draggable.dart';
import 'mediaquery.dart';
import 'placeholder.dart';
import 'reorderablelistview.dart';
import 'package:url_launcher/url_launcher.dart';
class Homes extends StatefulWidget {
  @override
  createState() => HomesState();
}

class HomesState extends State<Homes> {
  List <Widget> arrWid = [
    Animations(),
    BodyWidget(),
    LogoFade(),
    Pad(),
    Posit(),
    Aspects(),
    Constrains(),
    MyHomePage(),
    IndexdeSatck(),
    Limied(),
    Medias(),
    Places(),
    Reorder(),
    Richs(),
    Spacerss(),
    Stackes(),
  ];

  List <String> arrText = [
      "AnimatedIcon",
      "AnimatedList",
      "AnimatedOpacity",
      "AnimatedPadding",
      "AnimatedPositioned",
      "AspectRatio",
      "ConstrainedBox",
      "Draggable",
      "IndexStack",
      "LimitedBox",
      "MediaQuery",
      "PlaceHolder",
      "ReorderableListView",
      "RichText",
      "Spacer",
      "Stack"
  ];

  @override
  Widget build(BuildContext context) {
    return 
       Scaffold(
         backgroundColor: Colors.white60,
         body: Container(
           child: ListView.builder(
             itemCount: arrText.length,
             itemBuilder: (context, i){
               return Container(
                  margin: EdgeInsets.all(10),
                 child: 
                     RaisedButton(
                       
                        elevation: 10,
                        color: Colors.pinkAccent,
                        onPressed: (){
                          toNewPage(arrWid[i]);
                        },
                        child: Text(arrText[i],
                        style: TextStyle( color: Colors.white, fontWeight: FontWeight.bold,
                        ),
                 )
               
                 ),
               );
             },
             ),
         ),
       );
  }

  void toNewPage(Widget wid){
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
        return wid;
    }));
  }
}

