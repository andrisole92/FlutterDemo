import 'package:flutter/material.dart';

class TabThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialButton(
        child: Text('Tab Three :)'),
        onPressed: () {
          //Do something
        },
        color: Colors.blueAccent,
        shape: StadiumBorder(),
        textColor: Colors.white,
      ),
    );
  }
}
