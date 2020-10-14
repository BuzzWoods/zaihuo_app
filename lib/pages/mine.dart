import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MinePage extends StatefulWidget {
  @override
  _MinePageState createState() => new _MinePageState();
}

class _MinePageState extends State<MinePage> {
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Text('我的'),
      ),
    );
  }
}
