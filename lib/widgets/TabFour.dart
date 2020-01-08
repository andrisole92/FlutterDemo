import 'package:flutter/material.dart';


var card = Card(
  elevation: 16,
  child: Center(
    child: Text('Sample'),
  ),
);
var grid = GridView.count(
  primary: false,
  padding: const EdgeInsets.all(20),
  crossAxisSpacing: 10,
  mainAxisSpacing: 10,
  crossAxisCount: 2,
  children: <Widget>[
    card,
    card,
    card,
    card,
    card,
    card,
    card,
    card,
    card,
    card,
    card,
    card,
    card,
    card,
    card,
    card,
    card,
    card,
    card,
  ],
);

class TabFour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return grid;
  }
}
