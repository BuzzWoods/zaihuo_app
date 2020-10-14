import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  @override
  _MessagePageState createState() => new _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Text('消息'),
      ),
    );
  }
}
