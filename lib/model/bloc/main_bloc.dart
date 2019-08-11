import 'package:rxdart/rxdart.dart';

import 'package:zz_blog/common/theme.dart';
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
  ThemeStyle _themeStyle = ThemeStyle.dark();

  // 获取主题
  ThemeStyle get themeStyle => _themeStyle;

  // 主题数据流
  var _themeSubject = BehaviorSubject<ThemeStyle>();

  // 获取主题数据流
  Stream<ThemeStyle> get themeStream => _themeSubject.stream;

  // 位置数组（第一个表示选中位置，第二个表示hover位置）
  List<int> _indexs = [0, -1];

  // 获取位置
  List<int> get indexs => _indexs;

  // 位置数据流
  var _indexsSubject = BehaviorSubject<List<int>>();

  // 获取位置数据流
  Stream<List<int>> get indexsStream => _indexsSubject.stream;

  ///
  /// 更换主题
  ///
  changeTheme() {
    if (themeStyle.light) {
      _themeStyle = ThemeStyle.dark();
    } else {
      _themeStyle = ThemeStyle.light();
    }
    _themeSubject.add(themeStyle);
  }

  ///
  /// 设置位置
  ///
  setIndex(index) {
    if (_indexs[0] != index) {
      _indexs[0] = index;
      _indexsSubject.add(indexs);
    }
  }

  ///
  /// 设置hover位置
  ///
  setHoverIndex(index) {
    if (!_indexs.every((i) => i == index)) {
      _indexs[1] = index;
      _indexsSubject.add(indexs);
    }
  }

  ///
  /// 移除hover
  ///
  removeHover() {
    _indexs[1] = -1;
    _indexsSubject.add(indexs);
  }

  ///
  /// 释放资源
  ///
  dispose() {
    _indexsSubject.close();
  }
}
