import 'package:flutter/material.dart';
import 'dart:core';
import 'DataChannelSample.dart';
import 'GetUserMediaSample.dart';
import 'LoopBackSample.dart';
import 'RouteItem.dart';

typedef void RouteCallback(BuildContext context);

final List<RouteItem> items = <RouteItem>[
  RouteItem(
      title: 'GetUserMedia Test',
      push: (BuildContext context) {
        Navigator.push(
            context,
            new MaterialPageRoute(
                builder: (BuildContext context) => new GetUserMediaSample()));
      }),
  RouteItem(
      title: 'LoopBack Sample',
      push: (BuildContext context) {
        Navigator.push(
            context,
            new MaterialPageRoute(
                builder: (BuildContext context) => new LoopBackSample()));
      }),
  RouteItem(
      title: 'DataChannel Test',
      push: (BuildContext context) {
        Navigator.push(
            context,
            new MaterialPageRoute(
                builder: (BuildContext context) => new DataChannelSample()));
      }),
];

class BasicSample extends StatefulWidget {
  static String tag = 'basic_sample';

  @override
  _BasicSampleState createState() => new _BasicSampleState();
}

class _BasicSampleState extends State<BasicSample> {
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  @override
  initState() {
    super.initState();
  }

  @override
  deactivate() {
    super.deactivate();
  }

  _buildRow(context, item) {
    return ListBody(children: <Widget>[
      ListTile(
        title: Text(item.title),
        onTap: () => item.push(context),
        trailing: Icon(Icons.arrow_right),
      ),
      Divider()
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.all(0.0),
        itemCount: items.length,
        itemBuilder: (context, i) {
          return _buildRow(context, items[i]);
        });
  }
}
