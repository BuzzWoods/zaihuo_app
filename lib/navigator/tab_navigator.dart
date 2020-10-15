import 'package:flutter/material.dart';
import 'package:zaihuo_app/pages/home.dart';
import 'package:zaihuo_app/pages/message.dart';
import 'package:zaihuo_app/pages/product.dart';
import 'package:zaihuo_app/pages/mine.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabNavigator extends StatefulWidget {
  @override
  _TabNavigatorState createState() => _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator>
    with AutomaticKeepAliveClientMixin, SingleTickerProviderStateMixin {
  final _defaultColor = Color(0xFF666666);
  final _activeColor = Color(0xFFe52d2c);
  int _currentIndex = 0;
  PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController(
      initialPage: 0,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  // ignore: must_call_super
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: false);
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: <Widget>[
          HomePage(),
          ProductPage(),
          ProductPage(),
          MessagePage(),
          MinePage(),
        ],
        physics: NeverScrollableScrollPhysics(),
      ),
      floatingActionButton: Container(
        height: ScreenUtil().setWidth(100),
        width: ScreenUtil().setWidth(100),
        padding: EdgeInsets.all(7),
        decoration: new BoxDecoration(
            color: Color(0xFFFFFFFF),
            borderRadius: new BorderRadius.all(
                new Radius.circular(ScreenUtil().setWidth(100))),
            boxShadow: [
              new BoxShadow(
                color: Color(0x44000000),
                spreadRadius: ScreenUtil().setWidth(-3.0),
                blurRadius: ScreenUtil().setWidth(4.6),
                offset: Offset(0.0, ScreenUtil().setWidth(-3.2)),
              )
            ]),
        child: Image.asset(
          'images/create.png',
          width: ScreenUtil().setHeight(20),
          height: ScreenUtil().setHeight(20),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            _controller.animateToPage(index,
                curve: Curves.easeIn, duration: Duration(milliseconds: 260));
            setState(() {
              _currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 12,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'images/home.png',
                width: ScreenUtil().setWidth(36),
                height: ScreenUtil().setHeight(40),
              ),
              activeIcon: Image.asset(
                'images/home_active.png',
                width: ScreenUtil().setWidth(36),
                height: ScreenUtil().setHeight(40),
              ),
              title: Text(
                '首页',
                style: TextStyle(
                  fontSize: ScreenUtil().setSp(20),
                  color: _currentIndex != 0 ? _defaultColor : _activeColor,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'images/product.png',
                width: ScreenUtil().setWidth(36),
                height: ScreenUtil().setHeight(40),
              ),
              activeIcon: Image.asset(
                'images/product_active.png',
                width: ScreenUtil().setWidth(36),
                height: ScreenUtil().setHeight(40),
              ),
              title: Text(
                '拍品库',
                style: TextStyle(
                  fontSize: ScreenUtil().setSp(20),
                  color: _currentIndex != 1 ? _defaultColor : _activeColor,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset('images/product.png',
                  width: ScreenUtil().setWidth(36),
                  height: ScreenUtil().setHeight(40),
                  color: Colors.transparent),
              title: Text(
                '发布',
                style: TextStyle(
                  fontSize: ScreenUtil().setSp(20),
                  color: _currentIndex != 2 ? _defaultColor : _activeColor,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'images/message.png',
                width: ScreenUtil().setWidth(36),
                height: ScreenUtil().setHeight(40),
              ),
              activeIcon: Image.asset(
                'images/message_active.png',
                width: ScreenUtil().setWidth(36),
                height: ScreenUtil().setHeight(40),
              ),
              title: Text(
                '消息',
                style: TextStyle(
                  fontSize: ScreenUtil().setSp(20),
                  color: _currentIndex != 3 ? _defaultColor : _activeColor,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'images/mine.png',
                width: ScreenUtil().setWidth(36),
                height: ScreenUtil().setHeight(40),
              ),
              activeIcon: Image.asset(
                'images/mine_active.png',
                width: ScreenUtil().setWidth(36),
                height: ScreenUtil().setHeight(40),
              ),
              title: Text(
                '我的',
                style: TextStyle(
                  fontSize: ScreenUtil().setSp(20),
                  color: _currentIndex != 4 ? _defaultColor : _activeColor,
                ),
              ),
            ),
          ]),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
