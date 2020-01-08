import 'dart:math';

import 'package:flutter/material.dart';

var button = (onPressed) => MaterialButton(
      child: Text('Tab Three :)'),
      onPressed: onPressed,
      color: Colors.blueAccent,
      shape: StadiumBorder(),
      textColor: Colors.white,
    );

class TabTwo extends StatefulWidget {
  _TabTwoState createState() => _TabTwoState();
}

class _TabTwoState extends State<TabTwo> with SingleTickerProviderStateMixin {
  double opacityLevel = 1.0;
  Animation<double> animation;
  AnimationController _controller;
  Animation<double> angleAnimation;
  Animation<double> animationTitleFadeInOut;

  void setOpacity(double opa) {
    setState(() {
      opacityLevel = opa;
    });
  }

  @override
  void initState() {
    super.initState();

    _controller = new AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
    animationTitleFadeInOut = new Tween(
        begin: 0.0,
        end: 1.0
    ).animate(new CurvedAnimation(
      parent: _controller,
      curve: new Interval(
        0.0,
        0.5,
        curve: Curves.ease,
      ),
    ));

    _controller.addListener(() {
      setState(() {});
    });
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    final int percent = (_controller.value * 100.0).round();
    return Stack(alignment: AlignmentDirectional.center, children: <Widget>[
      Center(
        child: Container(
          color: Colors.green,
        ),
      ),
      Transform.rotate(
        angle: _controller.value * pi/2,
        child: Container(
          color: Colors.blue,
          height: _controller.value * 300,
          width: _controller.value * 300,
        ),
      ),
      AnimatedOpacity(
          opacity: animationTitleFadeInOut.value,
          duration: Duration(milliseconds: 500),
          child: Container(
            color: Colors.red,
            height: 150.0,
            width: 150.0,
            child: new Center(
              child: new Text('$percent%'),
            ),
          )),
      Positioned(
          bottom: 48.0,
          left: 10.0,
          right: 10.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              button(() => setOpacity(.25)),
              button(() => setOpacity(.5)),
              button(() => setOpacity(1))
            ],
          ))
    ]);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
