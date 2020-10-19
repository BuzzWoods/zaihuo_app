import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MinePage extends StatefulWidget {
  @override
  _MinePageState createState() => new _MinePageState();
}

class _MinePageState extends State<MinePage> {
  // final double titleBarHeight = 130;
  Widget build(BuildContext context) {
    // 用户信息
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    // topbar高度
    // final double titleBarHeight = 130;
    // 屏幕适配
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: false);
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [],
          ),
          _topBar
        ],
      ),
    );
  }

  Widget get _topBar {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: ScreenUtil().setWidth(130),
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
    );
  }
}
