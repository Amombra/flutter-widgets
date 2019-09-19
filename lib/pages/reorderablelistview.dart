import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class Reorder extends StatefulWidget {
  @override
  _ReorderState createState() => _ReorderState();
}


class _ReorderState extends State<Reorder> {
  double padValue = 0;

  List<Paint> paints = <Paint>[
    Paint(1, 'Lime', Colors.lime),
    Paint(2, 'Blue', Colors.blue),
    Paint(3, 'Orange', Colors.orange),
    Paint(4, 'Yellow', Colors.yellow),
    Paint(5, 'Teal', Colors.teal),
    Paint(6, 'Cyan', Colors.cyan)
  ];

  @override
  Widget build(BuildContext context) {
    return 
      Scaffold(
        appBar: AppBar(
          title: Text("ReorderableListView"),
          backgroundColor: Colors.pink,
        ),
        
        body: ReorderableListView(
          children: List.generate(paints.length, (index) {
            return ListTile(
              key: ValueKey("value$index"),
              leading: Container(
                width: 200.0,
                height: 100.0,
                color: paints[index].colorpicture,
              ),
              subtitle: Text(paints[index].title),              
            );
          }),
          onReorder: (int oldIndex, int newIndex) {
            setState(() {
              _updateMyItems(oldIndex, newIndex);
            });
          },
        ),
      
    );
  }

  void _updateMyItems(int oldIndex, int newIndex) {
      if(newIndex > oldIndex){
        newIndex -= 1;
      }

      final Paint item = paints.removeAt(oldIndex);
      paints.insert(newIndex, item);

  }
}

class Paint {
  final int id;
  final String title;
  final Color colorpicture;

  Paint(this.id, this.title, this.colorpicture);
}
_launchURL() {
  launch('https://github.com/Amombra/flutter-widgets/edit/master/README.md');
}