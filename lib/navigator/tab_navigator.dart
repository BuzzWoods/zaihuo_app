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
      if (_tabController.index == 2) {
        print(_tabController.index);
        return;
      } else {
        setState(() => _selectedIndex = _tabController.index);
      }

      // print("liucheng-> ${_tabController.indexIsChanging}");
    });
  }

  @override
  Widget build(BuildContext context) {
    // 屏幕适配
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: false);
    return Scaffold(
      floatingActionButton: new Stack(
        children: [
          Container(
            height: ScreenUtil().setHeight(100),
            width: ScreenUtil().setWidth(100),
            padding: EdgeInsets.all(ScreenUtil().setWidth(10)),
            decoration: new BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: new BorderRadius.all(
                    new Radius.circular(ScreenUtil().setWidth(50))),
                boxShadow: [
                  new BoxShadow(
                    color: Color(0x55000000),
                    spreadRadius: -4.0,
                    blurRadius: 1.0,
                    offset: Offset(0.0, -3.5),
                  )
                ]),
            child: Image.asset(
              'images/create.png',
              width: ScreenUtil().setHeight(20),
              height: ScreenUtil().setHeight(20),
            ),
          )
          // FloatingActionButton(
          //   elevation: 0,
          //   highlightElevation: 0,
          //   focusElevation: 0,
          //   onPressed: () {
          //     setState(() {
          //       _selectedIndex = 2;
          //       _tabController.index = 2;
          //     });
          //   },
          //   backgroundColor: Color(0xFFFFFFFF),
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       Image.asset(
          //         'images/create.png',
          //         width: ScreenUtil().setHeight(70),
          //         height: ScreenUtil().setHeight(70),
          //       )
          //     ],
          //   ),
          // ),
        ],
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: Container(
        color: Color(0xFFFFFFFF),
        height: ScreenUtil().setHeight(100),
        child: Column(
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
                  height: ScreenUtil().setHeight(94),
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
                    width: ScreenUtil().setWidth(60),
                    height: ScreenUtil().setHeight(94),
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
                  height: ScreenUtil().setHeight(94),
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
                  height: ScreenUtil().setHeight(94),
                  padding: EdgeInsets.all(0),
                  icon: _selectedIndex == 3
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
                  text: titles[3],
                  iconPadding: EdgeInsets.fromLTRB(0, 0, 0, 2),
                  textStyle: TextStyle(
                    fontSize: ScreenUtil().setSp(20),
                  ),
                ),
                EachTab(
                  width: ScreenUtil().setWidth(43),
                  height: ScreenUtil().setHeight(9),
                  padding: EdgeInsets.all(0),
                  icon: _selectedIndex == 4
                      ? Image.asset(
                          'images/mine_active.png',
                          width: ScreenUtil().setWidth(35),
                          height: ScreenUtil().setHeight(40),
                        )
                      : Image.asset(
                          'images/mine.png',
                          width: ScreenUtil().setWidth(35),
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
      // Align(
      //     child: Container(
      //       height: 90,
      //       width: 90,
      //       decoration: new BoxDecoration(
      //         border: new Border.all(width: 1.0, color: Colors.red),
      //         color: Colors.grey,
      //         borderRadius:
      //             new BorderRadius.all(new Radius.circular(45.0)),
      //       ),
      //     ),
      //     alignment: Alignment.bottomCenter),
    );
  }

  // @override
// implement wantKeepAlive 重写keepAlive
// ignore: override_on_non_overriding_member
  // bool get wantKeepAlive => true;
}
