import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MinePage extends StatefulWidget {
  @override
  _MinePageState createState() => new _MinePageState();
}

class _MinePageState extends State<MinePage> {
  Widget build(BuildContext context) {
    Widget userInfoSection = new Container(
      child: Row(mainAxisSize: MainAxisSize.min, children: [
        Container(
            margin: EdgeInsets.only(right: ScreenUtil().setWidth(22)),
            width: ScreenUtil().setWidth(95),
            height: ScreenUtil().setWidth(95),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "images/i8oCEW.jpg",
                ),
              ),
            )),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisSize: MainAxisSize.max,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: ScreenUtil().setWidth(220),
                  child: Text(
                    '在火官方as',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: ScreenUtil().setSp(30),
                        fontWeight: FontWeight.w900),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    softWrap: true,
                  ),
                ),
                Container(
                  width: ScreenUtil().setWidth(140),
                  child: Text(
                    'MiniApp34wjk3n4jkw3n4',
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                    maxLines: 1,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: ScreenUtil().setSp(28),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(
                  0, ScreenUtil().setWidth(6), 0, ScreenUtil().setWidth(12)),
              padding: EdgeInsets.fromLTRB(
                  ScreenUtil().setWidth(10),
                  ScreenUtil().setWidth(1),
                  ScreenUtil().setWidth(10),
                  ScreenUtil().setWidth(1)),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Color.fromRGBO(245, 206, 95, 1),
                      width: ScreenUtil().setWidth(1.5)),
                  borderRadius:
                      BorderRadius.circular(ScreenUtil().setWidth(20))),
              child: Row(
                children: [
                  Padding(
                      padding: EdgeInsets.only(right: ScreenUtil().setWidth(6)),
                      child: Image.asset(
                        'images/vip_tag.png',
                        width: ScreenUtil().setWidth(20),
                        height: ScreenUtil().setWidth(20),
                      )),
                  Text(
                    '竞拍员',
                    style: TextStyle(
                        color: Colors.white, fontSize: ScreenUtil().setSp(20)),
                  )
                ],
              ),
            )
          ],
        ),
      ]),
    );

    Widget userInfoDetailSection = new Container(
      child: Row(
        children: [
          Container(
              padding: EdgeInsets.fromLTRB(
                  0, ScreenUtil().setWidth(30), 0, ScreenUtil().setWidth(30)),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text('5',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: ScreenUtil().setSp(28),
                          )),
                      Text('关注',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: ScreenUtil().setSp(26),
                              height: ScreenUtil().setWidth(2.5)))
                    ],
                  ),
                  Column(
                    children: [
                      Text('5',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: ScreenUtil().setSp(28),
                          )),
                      Text('粉丝',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: ScreenUtil().setSp(26),
                              height: ScreenUtil().setWidth(2.5)))
                    ],
                  ),
                  Column(
                    children: [
                      Text('5',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: ScreenUtil().setSp(28),
                          )),
                      Text('我的团队',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: ScreenUtil().setSp(26),
                              height: ScreenUtil().setWidth(2.5)))
                    ],
                  )
                ],
              )),
          Container(
            child: Text(
              '编辑资料',
              style: TextStyle(
                  color: Colors.white, fontSize: ScreenUtil().setSp(26)),
            ),
            padding: EdgeInsets.fromLTRB(
                ScreenUtil().setWidth(30),
                ScreenUtil().setWidth(8),
                ScreenUtil().setWidth(30),
                ScreenUtil().setWidth(8)),
            decoration: BoxDecoration(
              border: Border.all(
                  width: ScreenUtil().setWidth(1.5), color: Colors.white),
              borderRadius: BorderRadius.circular(ScreenUtil().setWidth(50)),
            ),
          )
        ],
      ),
    );
    // 状态栏高度
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    // topbar高度
    final double titleBarHeight = 130;
    // 屏幕适配
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: false);
    // 安全区域组件
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration:
              new BoxDecoration(color: Color.fromRGBO(238, 238, 238, 100)),
        ),
        Container(
          height: ScreenUtil().setWidth(410),
          decoration: new BoxDecoration(
              image: new DecorationImage(
                  fit: BoxFit.cover,
                  image: new AssetImage('images/mine-center.png'))),
        ),
        Positioned(
            top: ScreenUtil().setWidth(titleBarHeight) -
                ScreenUtil().setWidth(statusBarHeight) -
                ScreenUtil().setWidth(35),
            child: SafeArea(
              child: Container(
                  padding: EdgeInsets.fromLTRB(ScreenUtil().setWidth(28), 0,
                      ScreenUtil().setWidth(28), 0),
                  child: Column(
                    children: [],
                  )),
            )),
        // 标题
        Container(
          // width: MediaQuery.of(context).size.width,
          height: ScreenUtil().setWidth(titleBarHeight),
          padding: EdgeInsets.only(top: ScreenUtil().setWidth(40)),
          decoration: BoxDecoration(color: Colors.transparent),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '个人中心',
                style: TextStyle(
                    color: Colors.white, fontSize: ScreenUtil().setSp(32)),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
