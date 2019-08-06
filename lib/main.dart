import 'package:flutter_web/material.dart';

import 'package:zz_blog/model/bloc_provider.dart';
import 'package:zz_blog/page/home.dart';

///
/// 运行app
///
void main() => runApp(MyApp());

///
/// App
///
/// @author zzzz1997
/// @created_time 20190805
///
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      child: MaterialApp(
        title: 'Flutter Demo',
        // theme: ThemeData(
        //   primarySwatch: Colors.blue,
        // ),
        home: HomePage(),
      ),
    );
  }
}
