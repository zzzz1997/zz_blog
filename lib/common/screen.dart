import 'package:flutter_web/material.dart';

///
/// 屏幕大小枚举
///
enum ScreenSize {
  XS,
  SM,
  MD,
  LG,
  XL,
}

///
/// 屏幕工具
///
/// @author zzzz1997
/// @created_time 20190805
///
class Screen {

  // 屏幕大小
  static ScreenSize screenSize;
  
  ///
  /// 初始化
  ///
  static init(context) {
    double width = MediaQuery.of(context).size.width;
    if (width < 768) {
      screenSize = ScreenSize.XS;
    } else if (width < 992) {
      screenSize = ScreenSize.SM;
    } else if (width < 1200) {
      screenSize = ScreenSize.MD;
    } else if (width < 1920) {
      screenSize = ScreenSize.LG;
    } else {
      screenSize = ScreenSize.XL;
    } 
  }
}