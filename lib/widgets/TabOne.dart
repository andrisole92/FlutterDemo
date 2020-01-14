import 'package:flutter/material.dart';

import 'Menu.dart';

var card = Card(
  elevation: 8,
  margin: EdgeInsets.only(bottom: 16),
  child: Column(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      const ListTile(
        contentPadding: EdgeInsets.only(top: 16, left: 16),
        leading: Icon(Icons.album),
        title: Text('The Enchanted Night '),
        subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
      ),
      ButtonBar(
        children: <Widget>[
          MaterialButton(
            child: const Text('BUY TICKETS'),
            onPressed: () {
              /* ... */
            },
            color: Colors.blueAccent,
            textColor: Colors.white,
            shape: StadiumBorder(),
            elevation: 8,
          ),
          MaterialButton(
            child: const Text('LISTEN'),
            onPressed: () {
              /* ... */
            },
            color: Colors.blueAccent,
            textColor: Colors.white,
            shape: StadiumBorder(),
            elevation: 8,
          ),
        ],
      ),
    ],
  ),
);

class TabOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Stack(
        alignment: Alignment.topLeft,
        children: <Widget>[
          list,
//          GuillotineMenu(),
        ],
      ),
    );
  }
}

var list = ListView(
    padding: EdgeInsets.all(10),
    children: <Widget>[card, card, card, card, card, card, card]);
