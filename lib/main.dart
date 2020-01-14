import 'package:demo_flutter/webrtc/BasicSample.dart';
import 'package:demo_flutter/widgets/Menu.dart';
import 'package:demo_flutter/widgets/Tabs.dart';
import 'package:demo_flutter/widgets/TabFour.dart';
import 'package:demo_flutter/widgets/TabOne.dart';
import 'package:demo_flutter/widgets/TabThree.dart';
import 'package:flutter/material.dart';

import 'widgets/TabTwo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Schenker Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
//      home: MyHomePage(title: 'Schenker App'),
      home: MyHomePage(title: 'Schenker App'),
      routes: {
//        '/second': (context) => FirstScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [TabOne(), TabTwo(), TabThree(), TabFour(), BasicSample()];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
//        appBar: GuillotineMenu(),
        body: _children[_currentIndex],
        bottomNavigationBar: tabs(onTabTapped, _currentIndex));
  }
}
