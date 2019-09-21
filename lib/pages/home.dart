import 'package:flutter/material.dart';
import 'AnimatedContainer.dart';
import 'wrap.dart';
import 'floatingactionbutton.dart';
import 'expanded.dart';
import 'fadeinimage.dart';
import 'fadetransition.dart';
import 'opacity.dart';
import 'pageview.dart';
import 'login.dart';
import 'page_de_ contenu.dart';

class Homes extends StatefulWidget {
  @override
  createState() => HomesState();
}

class HomesState extends State<Homes> {
  List <Widget> arrWid = [
    AnimatedContainers(),
    Expandeds(),
    FadeImages(),
    FadeTransitions(),
    Floatingbuttons(),
    Wraps(),
    Opacitys(),
    PageViews(),
    LoginApp(),
    Contenus(),

  ];

  List <String> arrText = [
      "AnimatedContainer",
      "Expanded",
      "FadeImage",
      "FadeTransition",
      "FloatingButton",
      "Wrap",
      "Opacity",
      "PageView",
      "Login",
      "Mon Contenu"
  ];

  @override
  Widget build(BuildContext context) {
    return 
       Scaffold(
         appBar: AppBar(
           backgroundColor: Colors.amber,
           title: Text("ANGELIC SMART WORK", textAlign: TextAlign.center,),
           actions: <Widget>[
             Icon(Icons.work, color: Colors.white, size: 30,textDirection: TextDirection.ltr,)
           ],
         ),
         backgroundColor: Colors.white60,
         body: Container(
           child: ListView.builder(
             itemCount: arrText.length,
             itemBuilder: (context, i){
               return Container(
                  margin: EdgeInsets.all(20),
                 child: 
                     RaisedButton(
                       
                        elevation: 10,
                        color: Colors.lightGreen,
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

