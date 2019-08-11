import 'package:flutter_web/material.dart';

import 'package:zz_blog/common/screen.dart';
import 'package:zz_blog/common/theme.dart';
import 'package:zz_blog/model/bloc/main_bloc.dart';
import 'package:zz_blog/model/bloc_provider.dart';
import 'package:zz_blog/widget/grid.dart';

///
/// 主页面
///
/// @author zzzz1997
/// @created_time 20190805
///
class HomePage extends StatelessWidget {
  // 标题
  final List<String> _list = ['主页', '关于', '联系我', '登录'];

  @override
  Widget build(BuildContext context) {
    // 初始化
    Screen.init(context);
    MainBloc mainBloc = BlocProvider.of<MainBloc>(context);
    return StreamBuilder(
      stream: mainBloc.themeStream,
      builder: (_, __) => Theme(
        data: mainBloc.themeStyle.themeData,
        child: Scaffold(
          backgroundColor: mainBloc.themeStyle.colors.background,
          body: Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              width: Screen.realWidth,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: _buildNavigitor(mainBloc),
                    ),
                    Text(
                      'Hello, World!',
                    ),
                    Grid(
                      blank: 0,
                      children: [
                        GridItem(
                          span: 6,
                          xs: 24,
                          sm: 12,
                          md: 6,
                          lg: 3,
                          xl: 2,
                          child: Container(
                            height: 40,
                            color: Colors.green,
                            child: Text('span-6'),
                          ),
                        ),
                        GridItem(
                          span: 6,
                          xs: 24,
                          sm: 12,
                          md: 6,
                          lg: 3,
                          xl: 2,
                          child: Container(
                            height: 40,
                            color: Colors.green,
                            child: Text('span-6'),
                          ),
                        ),
                        GridItem(
                          span: 6,
                          xs: 24,
                          sm: 12,
                          md: 6,
                          lg: 3,
                          xl: 2,
                          child: Container(
                            height: 40,
                            color: Colors.green,
                            child: Text('span-6'),
                          ),
                        ),
                        GridItem(
                          span: 6,
                          xs: 24,
                          sm: 12,
                          md: 6,
                          lg: 3,
                          xl: 2,
                          child: Container(
                            height: 40,
                            color: Colors.green,
                            child: Text('span-6'),
                          ),
                        ),
                        GridItem(
                          span: 12,
                          child: Container(
                            height: 40,
                            color: Colors.green,
                            child: Text('span-12'),
                          ),
                        ),
                        GridItem(
                          span: 13,
                          child: Container(
                            height: 40,
                            color: Colors.green,
                            child: Text('span-13'),
                          ),
                        ),
                        GridItem(
                          span: 14,
                          child: Container(
                            height: 40,
                            color: Colors.green,
                            child: Text('span-14'),
                          ),
                        ),
                        GridItem(
                          span: 15,
                          child: Container(
                            height: 40,
                            color: Colors.green,
                            child: Text('span-15'),
                          ),
                        ),
                        GridItem(
                          span: 16,
                          child: Container(
                            height: 40,
                            color: Colors.green,
                            child: Text('span-16'),
                          ),
                        ),
                        GridItem(
                          span: 17,
                          child: Container(
                            height: 40,
                            color: Colors.green,
                            child: Text('span-17'),
                          ),
                        ),
                        GridItem(
                          span: 18,
                          child: Container(
                            height: 40,
                            color: Colors.green,
                            child: Text('span-18'),
                          ),
                        ),
                        GridItem(
                          span: 19,
                          child: Container(
                            height: 40,
                            color: Colors.green,
                            child: Text('span-19'),
                          ),
                        ),
                        GridItem(
                          span: 20,
                          child: Container(
                            height: 40,
                            color: Colors.green,
                            child: Text('span-20'),
                          ),
                        ),
                        GridItem(
                          span: 21,
                          child: Container(
                            height: 40,
                            color: Colors.green,
                            child: Text('span-21'),
                          ),
                        ),
                        GridItem(
                          span: 22,
                          child: Container(
                            height: 40,
                            color: Colors.green,
                            child: Text('span-22'),
                          ),
                        ),
                        GridItem(
                          span: 23,
                          child: Container(
                            height: 40,
                            color: Colors.green,
                            child: Text('span-23'),
                          ),
                        ),
                        GridItem(
                          span: 24,
                          child: Container(
                            height: 40,
                            color: Colors.green,
                            child: Text('span-24'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  ///
  /// 构建导航栏
  ///
  Widget _buildNavigitor(MainBloc mainBloc) {
    if (Screen.screenSize != ScreenSize.XS) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _buildLogo(mainBloc),
          StreamBuilder<List<int>>(
            stream: mainBloc.indexsStream,
            builder: (_, __) => Row(
              mainAxisSize: MainAxisSize.min,
              children: _list.map((l) {
                int i = _list.indexOf(l);
                return Padding(
                  padding: EdgeInsets.all(4.0),
                  child: GestureDetector(
                    onTap: () {
                      mainBloc.setIndex(i);
                    },
                    child: Listener(
                      onPointerEnter: (_) {
                        mainBloc.setHoverIndex(i);
                      },
                      onPointerExit: (_) {
                        mainBloc.removeHover();
                      },
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: mainBloc.indexs[0] == i
                              ? mainBloc.themeStyle.colors.navSelected
                              : mainBloc.indexs[1] == i
                                  ? mainBloc.themeStyle.colors.navHover
                                  : mainBloc.themeStyle.colors.navNormal,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            _list[i],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      );
    } else {
      return ExpansionPanelList(
        children: <ExpansionPanel>[
          ExpansionPanel(
            isExpanded: true,
            headerBuilder: (_, __) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                _buildLogo(mainBloc),
                IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {},
                ),
              ],
            ),
            body: Column(
              mainAxisSize: MainAxisSize.min,
              children: _list.map((l) {
                int i = _list.indexOf(l);
                return DecoratedBox(
                  decoration: BoxDecoration(
                    color: mainBloc.indexs[0] == i
                        ? mainBloc.themeStyle.colors.navSelected
                        : mainBloc.indexs[1] == i
                            ? mainBloc.themeStyle.colors.navHover
                            : mainBloc.themeStyle.colors.navNormal,
                  ),
                  child: ListTile(
                    title: GestureDetector(
                      onTap: () {
                        mainBloc.setIndex(i);
                      },
                      child: Listener(
                        onPointerEnter: (_) {
                          mainBloc.setHoverIndex(i);
                        },
                        onPointerExit: (_) {
                          mainBloc.removeHover();
                        },
                        child: Text(
                          _list[i],
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      );
    }
  }

  ///
  /// 构建logo布局
  ///
  Widget _buildLogo(MainBloc mainBloc) {
    return GestureDetector(
      onTap: mainBloc.changeTheme,
      child: Text(
        'zzBlog',
        style: TextStyle(
          fontSize: 32,
        ),
      ),
    );
  }
}
