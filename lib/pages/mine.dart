import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../wdiget/mine/mine_sections.dart';

class MinePage extends StatefulWidget {
  @override
  _MinePageState createState() => new _MinePageState();
}

class _MinePageState extends State<MinePage> {
  final double titleBarHeight = 130;

  Widget build(BuildContext context) {
    // 用户信息
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    // topbar高度
    // final double titleBarHeight = 130;
    // 屏幕适配
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: false);
    return Scaffold(
      backgroundColor: Color(0xFFF1F1F1),
      body: Stack(
        children: [
          MediaQuery.removePadding(
            removeTop: true,
            context: context,
            child: ListView(
              children: [
                Container(
                  child: Stack(
                    // overflow: Overflow.visible,
                    children: [
                      Positioned(
                          child: IntrinsicHeight(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            _background,
                          ],
                        ),
                      )),
                      Container(
                        margin: EdgeInsets.only(
                            top: ScreenUtil().setWidth(titleBarHeight - 6)),
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: [
                            userInfoSection,
                            Container(
                              padding: EdgeInsets.fromLTRB(
                                  ScreenUtil().setWidth(20),
                                  0,
                                  ScreenUtil().setWidth(20),
                                  0),
                              child: Column(
                                children: [
                                  userInfoDetailSection,
                                  financeSection
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: ScreenUtil().setWidth(20),
                      right: ScreenUtil().setWidth(20)),
                  child: Column(
                    children: [BuyerSection()],
                  ),
                )
              ],
            ),
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

  Widget get userInfoSection {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Container(
        child: Row(
          children: [
            Container(
                margin: EdgeInsets.only(
                    left: ScreenUtil().setWidth(20),
                    right: ScreenUtil().setWidth(22)),
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
                  margin: EdgeInsets.fromLTRB(0, ScreenUtil().setWidth(6), 0,
                      ScreenUtil().setWidth(12)),
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
                          padding:
                              EdgeInsets.only(right: ScreenUtil().setWidth(6)),
                          child: Image.asset(
                            'images/vip_tag.png',
                            width: ScreenUtil().setWidth(20),
                            height: ScreenUtil().setWidth(20),
                          )),
                      Text(
                        '竞拍员',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: ScreenUtil().setSp(20)),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.fromLTRB(
            ScreenUtil().setWidth(16),
            ScreenUtil().setWidth(9),
            ScreenUtil().setWidth(12),
            ScreenUtil().setWidth(10)),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(100),
                bottomLeft: Radius.circular(100))),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'images/collect.png',
              height: ScreenUtil().setWidth(24),
              width: ScreenUtil().setWidth(24),
            ),
            Padding(padding: EdgeInsets.only(left: ScreenUtil().setWidth(8))),
            Text(
              '我的拍场',
              style: TextStyle(
                  color: Color(0xFF666666),
                  fontSize: ScreenUtil().setSp(24),
                  fontWeight: FontWeight.w100),
            ),
            Padding(padding: EdgeInsets.only(left: ScreenUtil().setWidth(8))),
            Image.asset(
              'images/next.png',
              height: ScreenUtil().setWidth(20),
              width: ScreenUtil().setWidth(20),
            ),
          ],
        ),
      )
    ]);
  }

  Widget get userInfoDetailSection {
    return Container(
      padding: EdgeInsets.fromLTRB(ScreenUtil().setWidth(8),
          ScreenUtil().setWidth(30), 0, ScreenUtil().setWidth(24)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              width: ScreenUtil().setWidth(370),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _detailItem('5', '关注'),
                  _detailItem('1', '粉丝'),
                  _detailItem('0', '我的团队'),
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
  }

  Widget get financeSection {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(ScreenUtil().setWidth(10))),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(ScreenUtil().setWidth(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '累计收益（元）',
                  style: TextStyle(
                      color: Color(0xff333333),
                      fontWeight: FontWeight.w900,
                      fontSize: ScreenUtil().setSp(26)),
                ),
                Text(
                  '抵拍金:0.00',
                  style: TextStyle(
                      color: Color(0xffF37B1D),
                      fontWeight: FontWeight.w900,
                      fontSize: ScreenUtil().setSp(26)),
                )
              ],
            ),
          ),
          Divider(
            height: 1,
            color: Color(0xaadddddd),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '88.88',
                style: TextStyle(
                    color: Color(0xffF37B1D),
                    fontWeight: FontWeight.w400,
                    fontSize: ScreenUtil().setSp(80)),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.only(top: ScreenUtil().setWidth(20))),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _financeItem('2.11', '余额（元）', '去提现'),
              _financeItem('0', '待入账（元）', '赏金明细'),
              _financeItem('1.88', '货款（元）', '商家助手')
            ],
          ),
          Padding(padding: EdgeInsets.only(top: ScreenUtil().setWidth(20))),
        ],
      ),
    );
  }

// 详情item
  Column _detailItem(String num, String label) {
    return Column(
      children: [
        Text('$num',
            style: TextStyle(
              color: Colors.white,
              fontSize: ScreenUtil().setSp(28),
            )),
        Text('$label',
            style: TextStyle(
                color: Colors.white,
                fontSize: ScreenUtil().setSp(26),
                height: ScreenUtil().setWidth(2.5)))
      ],
    );
  }

// 资金item
  Column _financeItem(String num, String label, String urlName, {String url}) {
    return Column(
      children: [
        Text('$label',
            style: TextStyle(
              color: Color(0xffaaaaaa),
              fontSize: ScreenUtil().setSp(24),
            )),
        Padding(padding: EdgeInsets.only(top: ScreenUtil().setWidth(8))),
        Text('$num',
            style: TextStyle(
                color: Color(0xff333333),
                fontSize: ScreenUtil().setSp(36),
                fontWeight: FontWeight.w700)),
        Padding(padding: EdgeInsets.only(top: ScreenUtil().setWidth(8))),
        Container(
          child: Row(
            children: [
              Text('$urlName',
                  style: TextStyle(
                    color: Color(0xff178CFF),
                    fontSize: ScreenUtil().setSp(25),
                  )),
              Container(
                padding: EdgeInsets.only(top: ScreenUtil().setWidth(3)),
                child: Image.asset('images/next.png',
                    color: Color(0xff178CFF),
                    height: ScreenUtil().setWidth(20),
                    width: ScreenUtil().setWidth(20)),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget _background = Container(
    height: ScreenUtil().setWidth(407),
    decoration: new BoxDecoration(
        image: new DecorationImage(
            fit: BoxFit.cover,
            image: new AssetImage('images/mine-center.png'))),
  );
}
