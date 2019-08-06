import 'package:flutter_web/material.dart';

import 'package:zz_blog/common/screen.dart';
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
  final List<String> _list = ['1', '2', '3'];

  @override
  Widget build(BuildContext context) {
    // 初始化
    Screen.init(context);
    MainBloc mainBloc = BlocProvider.of<MainBloc>(context);
    return StreamBuilder(
      stream: mainBloc.themeStream,
      builder: (_, __) => Theme(
        data: mainBloc.themeData,
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 51, 51, 51),
          body: Center(
            child: SizedBox(
              width: Screen.realWidth,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GestureDetector(
                          onTap: mainBloc.changeTheme,
                          child: Text(
                            'Hello, World!',
                          ),
                        ),
                        StreamBuilder<int>(
                          stream: mainBloc.indexStream,
                          builder: (_, __) => Row(
                            mainAxisSize: MainAxisSize.min,
                            children: _list
                                .map((l) => GestureDetector(
                                      onTap: () {
                                        mainBloc.setIndex(_list.indexOf(l));
                                      },
                                      child: Text(
                                        l,
                                        style: TextStyle(
                                          color:
                                              mainBloc.index == _list.indexOf(l)
                                                  ? Colors.black
                                                  : Colors.white,
                                        ),
                                      ),
                                    ))
                                .toList(),
                          ),
                        ),
                      ],
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
}
