import 'package:flutter_web/material.dart';

import 'package:zz_blog/model/bloc/base_bloc.dart';
import 'package:zz_blog/model/bloc/main_bloc.dart';

///
/// bloc提供者
///
/// @author zzzz1997
/// @created_time 20190806
///
class BlocProvider extends InheritedWidget {
  // bloc
  final Map<String, BaseBloc> blocMap = {
    // 主bloc
    MainBloc.tag: MainBloc(),
  };

  BlocProvider({Key key, Widget child}) : super(key: key, child: child);

  ///
  /// 获取bloc实例
  ///
  static T of<T extends BaseBloc>(BuildContext context) {
    BlocProvider blocProvider =
        context.inheritFromWidgetOfExactType(BlocProvider) as BlocProvider;
    print(T.toString());
    return blocProvider.blocMap[T.toString()];
  }

  @override
  bool updateShouldNotify(_) => true;
}
