import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_custom_bottom_tab_bar/eachtab.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zaihuo_app/pages/home.dart';
import 'package:zaihuo_app/pages/message.dart';
import 'package:zaihuo_app/pages/product.dart';
import 'package:zaihuo_app/pages/mine.dart';

class TabNavigator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  int _selectedIndex = 0;
  var titles = ['首页', '拍品库', '发布', '消息', '我的'];
  @override
  void initState() {
    super.initState();
    _tabController =
        new TabController(vsync: this, initialIndex: 0, length: titles.length);
    _tabController.addListener(() {
      // if (_tabController.index == 2) {
      //   // print(_tabController.index);
      //   setState(() => _tabController.index = 5);
      // } else {
      setState(() => _selectedIndex = _tabController.index);
      // }

      print("liucheng-> ${_tabController.indexIsChanging}");
    });
  }

  @override
  Widget build(BuildContext context) {
    // 屏幕适配
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: false);
    return Scaffold(
      floatingActionButton: GestureDetector(
          onTap: () {
            setState(() {
              // _selectedIndex = 2;
              _tabController.index = 2;
            });
            print(_selectedIndex);
          },
          child: Container(
            height: ScreenUtil().setWidth(100),
            width: ScreenUtil().setWidth(100),
            padding: EdgeInsets.all(7),
            decoration: new BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: new BorderRadius.all(
                    new Radius.circular(ScreenUtil().setWidth(100))),
                boxShadow: [
                  new BoxShadow(
                    color: Color(0x33000000),
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
          )),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: Container(
        color: Color(0xFFFFFFFF),
        height: ScreenUtil().setHeight(100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Divider(
              height: 1,
            ),
            new TabBar(
              isScrollable: false,
              controller: _tabController,
              indicatorColor: Colors.transparent,
              labelColor: Color(0xFFe52d2c),
              labelPadding: EdgeInsets.all(0),
              unselectedLabelColor: Color(0xFF666666),
              tabs: <Widget>[
                EachTab(
                  width: ScreenUtil().setWidth(43),
                  height: ScreenUtil().setHeight(93),
                  padding: EdgeInsets.all(0),
                  icon: _selectedIndex == 0
                      ? Image.asset(
                          'images/home_active.png',
                          width: ScreenUtil().setWidth(35),
                          height: ScreenUtil().setHeight(40),
                        )
                      : Image.asset(
                          'images/home.png',
                          width: ScreenUtil().setWidth(35),
                          height: ScreenUtil().setHeight(40),
                        ),
                  text: titles[0],
                  iconPadding: EdgeInsets.fromLTRB(0, 0, 0, 2),
                  textStyle: TextStyle(
                    fontSize: ScreenUtil().setSp(20),
                  ),
                ),
                EachTab(
                    width: ScreenUtil().setWidth(64),
                    height: ScreenUtil().setHeight(93),
                    padding: EdgeInsets.all(0),
                    icon: _selectedIndex == 1
                        ? Image.asset(
                            'images/product_active.png',
                            width: ScreenUtil().setWidth(35),
                            height: ScreenUtil().setHeight(40),
                          )
                        : Image.asset(
                            'images/product.png',
                            width: ScreenUtil().setWidth(35),
                            height: ScreenUtil().setHeight(40),
                          ),
                    text: titles[1],
                    iconPadding: EdgeInsets.fromLTRB(0, 0, 0, 2),
                    textStyle: TextStyle(
                      fontSize: ScreenUtil().setSp(20),
                    )),
                EachTab(
                  width: ScreenUtil().setWidth(43),
                  height: ScreenUtil().setHeight(93),
                  padding: EdgeInsets.all(0),
                  icon: _selectedIndex == 2
                      ? Image.asset('images/product.png',
                          width: ScreenUtil().setWidth(35),
                          height: ScreenUtil().setHeight(40),
                          color: Colors.transparent)
                      : Image.asset('images/product.png',
                          width: ScreenUtil().setWidth(35),
                          height: ScreenUtil().setHeight(40),
                          color: Colors.transparent),
                  text: titles[2],
                  iconPadding: EdgeInsets.fromLTRB(0, 0, 0, 2),
                  textStyle: TextStyle(
                    fontSize: ScreenUtil().setSp(20),
                  ),
                ),
                EachTab(
                  width: ScreenUtil().setWidth(43),
                  height: ScreenUtil().setHeight(93),
                  padding: EdgeInsets.all(0),
                  icon: Badge(
                    badgeColor: Color(0xFFe52d2c),
                    badgeContent: Text(
                      '2',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: ScreenUtil().setSp(16)),
                    ),
                    child: _selectedIndex == 4
                        ? Image.asset(
                            'images/message_active.png',
                            width: ScreenUtil().setWidth(35),
                            height: ScreenUtil().setHeight(40),
                          )
                        : Image.asset(
                            'images/message.png',
                            width: ScreenUtil().setWidth(35),
                            height: ScreenUtil().setHeight(40),
                          ),
                  ),
                  text: titles[3],
                  iconPadding: EdgeInsets.fromLTRB(0, 0, 0, 2),
                  textStyle: TextStyle(
                    fontSize: ScreenUtil().setSp(20),
                  ),
                ),
                EachTab(
                  width: ScreenUtil().setWidth(43),
                  height: ScreenUtil().setHeight(93),
                  padding: EdgeInsets.all(0),
                  icon: _selectedIndex == 4
                      ? Image.asset(
                          'images/mine_active.png',
                          width: ScreenUtil().setWidth(37),
                          height: ScreenUtil().setHeight(40),
                        )
                      : Image.asset(
                          'images/mine.png',
                          width: ScreenUtil().setWidth(37),
                          height: ScreenUtil().setHeight(40),
                        ),
                  text: titles[4],
                  iconPadding: EdgeInsets.fromLTRB(0, 0, 0, 2),
                  textStyle: TextStyle(
                    fontSize: ScreenUtil().setSp(20),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(), //设置滑动的效果，这个禁用滑动
        controller: _tabController,
        children: <Widget>[
          HomePage(),
          ProductPage(),
          ProductPage(),
          MessagePage(),
          MinePage(),
        ],
      ),
    );
  }

  // @override
// implement wantKeepAlive 重写keepAlive
// ignore: override_on_non_overriding_member
  // bool get wantKeepAlive => true;
}
