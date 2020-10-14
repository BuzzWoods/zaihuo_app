import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => new _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Text('产品'),
      ),
    );
  }
}
