import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Pad extends StatefulWidget {
  @override
  createState() => PadState();
}

class PadState extends State<Pad> {
 
double valeur_contenu = 0;


  @override
  Widget build(BuildContext context) {
    return 
       Scaffold(
         body: Center(
           child: Column(
             children: <Widget>[
               AnimatedPadding(
                 duration: const Duration(seconds: 1),
                 curve: Curves.easeInCirc,
                 padding: EdgeInsets.all(valeur_contenu),
                 child: Container(
                   margin: EdgeInsets.all(60),
                   height: 290,
                   width: 200,
                   color: Colors.red,
                 ),
               ),
               ButtonBar(
                 alignment: MainAxisAlignment.center,
                  children: <Widget>[
                   RaisedButton(
                      color: Colors.red,
                      child: Text("Augmenter",
                       style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                       ),
                      ),
                      
                      onPressed: (){
                          setState((){
                            valeur_contenu = valeur_contenu + 10;
                          });
                      }
                      ),

                      RaisedButton(
                      color: Colors.blueAccent,
                      child: Text("Dimunier",
                       style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                       ),
                      ),
                      
                      onPressed: (){
                        setState((){
                           if(valeur_contenu != 0) {
                              valeur_contenu = valeur_contenu -10;
                           }
                          });
                      }
                      ),
                  ],
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
