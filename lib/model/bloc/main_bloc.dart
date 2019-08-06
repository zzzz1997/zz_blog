import 'package:flutter_web/material.dart';
import 'package:rxdart/rxdart.dart';

import 'package:zz_blog/model/bloc/base_bloc.dart';

///
/// 主bloc
///
/// @author zzzz1997
/// @created_time 20190806
///
class MainBloc extends BaseBloc {
  // 类标签
  static String tag = 'MainBloc';

  // 主题
  ThemeData _themeData = ThemeData.dark();

  // 获取主题
  ThemeData get themeData => _themeData;

  // 主题数据流
  var _themeSubject = BehaviorSubject<ThemeData>();

  // 获取主题数据流
  Stream<ThemeData> get themeStream => _themeSubject.stream;

  // 位置
  int _index = 0;

  // 获取位置
  int get index => _index;

  // 位置数据流
  var _indexSubject = BehaviorSubject<int>();

  // 获取位置数据流
  Stream<int> get indexStream => _indexSubject.stream;

  ///
  /// 更换主题
  ///
  changeTheme() {
    if (themeData == ThemeData.dark()) {
      _themeData = ThemeData.light();
    } else {
      _themeData = ThemeData.dark();
    }
    _themeSubject.add(themeData);
  }

  ///
  /// 设置位置
  ///
  setIndex(index) {
    this._index = index;
    _indexSubject.add(index);
  }

  ///
  /// 释放资源
  ///
  dispose() {
    _indexSubject.close();
  }
}
