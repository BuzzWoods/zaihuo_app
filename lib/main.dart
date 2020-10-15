import 'package:flutter/material.dart';
import 'navigator/tab_navigator.dart';

bool debugPaintBaselinesEnabled = true;
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TextStyle textStyle = TextStyle(fontSize: 20);
    // SystemUiOverlayStyle style = SystemUiOverlayStyle(
    //     statusBarColor: Colors.transparent,
    //     ///这是设置状态栏的图标和字体的颜色
    //     ///Brightness.light  一般都是显示为白色
    //     ///Brightness.dark 一般都是显示为黑色
    //     statusBarIconBrightness: Brightness.dark
    // );
    // SystemChrome.setSystemUIOverlayStyle(style);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ZAIHUO',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'PingFang',
      ),
      home: TabNavigator(),
    );
  }
}
