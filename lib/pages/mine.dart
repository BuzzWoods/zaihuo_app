import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MinePage extends StatefulWidget {
  @override
  _MinePageState createState() => new _MinePageState();
}

class _MinePageState extends State<MinePage> {
  Widget build(BuildContext context) {
    // 状态栏高度
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    final double titleBarHeight = 150;
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
          height: ScreenUtil().setWidth(400),
          decoration: new BoxDecoration(
              image: new DecorationImage(
                  fit: BoxFit.cover,
                  image: new AssetImage('images/mine-center.png'))),
        ),
        Positioned(
            top: ScreenUtil().setWidth(300),
            child: SafeArea(
              child: Container(
                  child: Column(
                children: [
                  // 头像
                  Container(
                      width: ScreenUtil().setWidth(80),
                      height: ScreenUtil().setWidth(80),
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
                ],
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
