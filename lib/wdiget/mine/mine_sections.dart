import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuyerSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: false);
    return Container(
        margin: EdgeInsets.only(top: ScreenUtil().setWidth(25)),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(ScreenUtil().setWidth(10))),
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.all(ScreenUtil().setWidth(20)),
                child: Row(
                  children: [
                    Text(
                      '我是买家',
                      style: TextStyle(
                          color: Color(0xff333333),
                          fontWeight: FontWeight.w900,
                          fontSize: ScreenUtil().setSp(26)),
                    ),
                  ],
                )),
            Divider(
              height: 1,
              color: Color(0xaadddddd),
            ),
            Container(
              padding: EdgeInsets.all(ScreenUtil().setWidth(13)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _optionItem(Icons.assignment, '我买到的'),
                  _optionItem(Icons.outlined_flag, '我参与的'),
                  _optionItem(Icons.brightness_5, '我的信用'),
                  _optionItem(Icons.verified_user, '我买售后')
                ],
              ),
            )
          ],
        ));
  }

  // 选项item
  _optionItem(icon, String label) {
    return Padding(
      padding: EdgeInsets.all(ScreenUtil().setWidth(35)),
      child: Column(
        children: [
          Icon(
            icon,
            size: ScreenUtil().setWidth(40),
            color: Color(0xff333333),
          ),
          Padding(padding: EdgeInsets.only(top: ScreenUtil().setWidth(10))),
          Text('$label',
              style: TextStyle(
                color: Color(0xff333333),
                fontSize: ScreenUtil().setSp(24),
              ))
        ],
      ),
    );
  }
}
