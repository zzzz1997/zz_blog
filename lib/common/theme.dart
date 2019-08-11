import 'package:flutter_web/material.dart';

///
/// 主题风格
///
/// @author zzzz1997
/// @created_time 20190810
///
class ThemeStyle {
  // 亮主题
  factory ThemeStyle.light() => ThemeStyle(true);

  // 暗主题
  factory ThemeStyle.dark() => ThemeStyle(false);

  // 是否亮主题
  final bool light;

  ThemeStyle(this.light) {
    themeData = light ? ThemeData.light() : ThemeData.dark();
    colors = ColorStyle(light);
  }

  // 官方主题
  ThemeData themeData;

  // 颜色风格
  ColorStyle colors;
}

///
/// 颜色风格
///
class ColorStyle {
  ColorStyle(bool light) {
    background = light ? Color(0xFFFFFFFF) : Color(0xFF333333);
    navNormal = light ? Color(0x00FFFFFF) : Color(0x00FFFFFF);
    navHover = light ? Color(0xFF80D8FF) : Color(0xFF555555);
    navSelected = light ? Color(0xFF80D8FF) : Color(0xFF555555);
  }

  // 背景色
  Color background;

  // 导航普通颜色
  Color navNormal;

  // 导航hover颜色
  Color navHover;

  // 导航选中颜色
  Color navSelected;
}
