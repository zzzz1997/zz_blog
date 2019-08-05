import 'package:flutter_web/material.dart';

import 'package:zz_blog/common/screen.dart';

// 总宽度单位
const fullSpan = 24;

///
/// 栅格布局
///
/// @author zzzz1997
/// @created_time 20190805
///
class Grid extends StatelessWidget {
  // 空白间距
  final double blank;

  // 子组件
  final List<GridItem> children;

  Grid({this.blank = 0, @required this.children})
      : assert(blank >= 0),
        assert(children != null);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / fullSpan;
    List<Row> rows = [];
    // 开始位置
    int index = 0;
    // 子组件
    List<Widget> list;
    while (true) {
      int i = _getChildIndex(children.sublist(index)) + 1;
      if (i == 0) {
        break;
      }
      list = List(i);
      for (int j = 0; j < i; j++) {
        GridItem gridItem = children[index + j];
        list[j] = SizedBox(
          width: width * gridItem.realSpan,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: blank / 2),
            child: gridItem.child,
          ),
        );
      }
      rows.add(Row(
        children: list,
      ));
      if (index + i >= children.length) {
        break;
      } else {
        index += i;
      }
    }
    return rows.isEmpty
        ? SizedBox()
        : rows.length == 1
            ? rows[0]
            : Column(
                children: rows,
              );
  }

  ///
  /// 计算row的子组件数
  ///
  int _getChildIndex(List<GridItem> gridItems) {
    if (gridItems == null || gridItems.isEmpty) {
      return -1;
    }
    print(gridItems.length);
    int index;
    int span = 0;
    for (int i = 0; i < gridItems.length; i++) {
      span += gridItems[i].realSpan;
      if (span > fullSpan) {
        break;
      }
      index = i;
      if (span == fullSpan) {
        break;
      }
    }
    return index;
  }
}

///
/// 栅格的子类
///
class GridItem {
  // 宽度占比
  final int span;

  // xs
  final int xs;

  // sm
  final int sm;

  // md
  final int md;

  // lg
  final int lg;

  // xl
  final int xl;

  // 子组件
  final Widget child;

  GridItem(
      {@required this.span,
      @required this.child,
      this.xs,
      this.sm,
      this.md,
      this.lg,
      this.xl})
      : assert(span > 0),
        assert(span <= 24),
        assert(child != null);

  ///
  /// 根据屏幕设置
  ///
  int get realSpan {
    switch (Screen.screenSize) {
      case ScreenSize.XS:
        return xs ?? span;
        break;
      case ScreenSize.SM:
        return sm ?? span;
        break;
      case ScreenSize.MD:
        return md ?? span;
        break;
      case ScreenSize.LG:
        return lg ?? span;
        break;
      case ScreenSize.XL:
        return xl ?? span;
        break;
      default:
        return -1;
    }
  }
}
