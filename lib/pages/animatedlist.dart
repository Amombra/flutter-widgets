import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';




class BodyWidget extends StatefulWidget {
  @override
  BodyWidgetState createState() {
    return new BodyWidgetState();
  }
}
class BodyWidgetState extends State<BodyWidget> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();
  List<String> _data = ['Horse', 'Cow', 'Camel', 'Sheep', 'Goat'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedList"),
        backgroundColor: Colors.pink,
      ),
      backgroundColor: Colors.white30,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 400,
          child: AnimatedList(
            key: _listKey,
            initialItemCount: _data.length,
            itemBuilder: (context, index, animation) {
              return _buildItem(_data[index], animation);
            },
          ),
        ),
        RaisedButton(
          child: Text(
            'Insert single item',
            style: TextStyle(fontSize: 20),
          ),
          onPressed: () {
            _onButtonPress();
          },
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
    );
  }
  Widget _buildItem(String item, Animation animation) {
    return Center(
      child: Column(
        children: <Widget>[
          SizeTransition(
        sizeFactor: animation,
          child: Card(
            child: ListTile(
              title: Text(
                item,
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        ),
            
        ],
      ),
    );
  }
  void _onButtonPress() {
    _insertSingleItem();
  }
  void _insertSingleItem() {
    String item = "Pig";
    int insertIndex = 2;
    _data.insert(insertIndex, item);
    _listKey.currentState.insertItem(insertIndex);
  }
  void _insertMultipleItems() {
    final items = ['Pig', 'Chichen', 'Dog'];
    int insertIndex = 2;
    _data.insertAll(insertIndex, items);

    for (int offset = 0; offset < items.length; offset++) {
      _listKey.currentState.insertItem(insertIndex + offset);
    }
  }
  void _removeSingleItems() {
    int removeIndex = 2;
    String removedItem = _data.removeAt(removeIndex);

    AnimatedListRemovedItemBuilder builder = (context, animation) {
      return _buildItem(removedItem, animation);
    };
    _listKey.currentState.removeItem(removeIndex, builder);
  }
  void _removeMultipleItems() {
    int removeIndex = 2;
    int count = 2;
    for (int i = 0; i < count; i++) {
      String removedItem = _data.removeAt(removeIndex);
      AnimatedListRemovedItemBuilder builder = (context, animation) {
        return _buildItem(removedItem, animation);
      };
      _listKey.currentState.removeItem(removeIndex, builder);
    }
  }
}

_launchURL() {
  launch('https://github.com/Amombra/flutter-widgets/edit/master/README.md');
}