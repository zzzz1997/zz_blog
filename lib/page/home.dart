import 'package:flutter_web/material.dart';

import 'package:zz_blog/common/screen.dart';
import 'package:zz_blog/widget/grid.dart';

///
/// 主页面
///
/// @author zzzz1997
/// @created_time 20190805
///
class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // 初始化
    Screen.init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('zzBlog'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hello, World!',
            ),
            Grid(
              blank: 0, 
              children: [
              GridItem(span: 6, xs: 24, sm: 12, md: 6, lg: 3, xl: 2, child: Container(height: 40,color: Colors.green, child: Text('span-6'),),),
              GridItem(span: 6, xs: 24, sm: 12, md: 6, lg: 3, xl: 2, child: Container(height: 40,color: Colors.green, child: Text('span-6'),),),
              GridItem(span: 6, xs: 24, sm: 12, md: 6, lg: 3, xl: 2, child: Container(height: 40,color: Colors.green, child: Text('span-6'),),),
              GridItem(span: 6, xs: 24, sm: 12, md: 6, lg: 3, xl: 2, child: Container(height: 40,color: Colors.green, child: Text('span-6'),),),
              GridItem(span: 12, child: Container(height: 40,color: Colors.green, child: Text('span-12'),),),
              GridItem(span: 13, child: Container(height: 40,color: Colors.green, child: Text('span-13'),),),
              GridItem(span: 14, child: Container(height: 40,color: Colors.green, child: Text('span-14'),),),
              GridItem(span: 15, child: Container(height: 40,color: Colors.green, child: Text('span-15'),),),
              GridItem(span: 16, child: Container(height: 40,color: Colors.green, child: Text('span-16'),),),
              GridItem(span: 17, child: Container(height: 40,color: Colors.green, child: Text('span-17'),),),
              GridItem(span: 18, child: Container(height: 40,color: Colors.green, child: Text('span-18'),),),
              GridItem(span: 19, child: Container(height: 40,color: Colors.green, child: Text('span-19'),),),
              GridItem(span: 20, child: Container(height: 40,color: Colors.green, child: Text('span-20'),),),
              GridItem(span: 21, child: Container(height: 40,color: Colors.green, child: Text('span-21'),),),
              GridItem(span: 22, child: Container(height: 40,color: Colors.green, child: Text('span-22'),),),
              GridItem(span: 23, child: Container(height: 40,color: Colors.green, child: Text('span-23'),),),
              GridItem(span: 24, child: Container(height: 40,color: Colors.green, child: Text('span-24'),),),
            ],
            ),
          ],
        ),
      ),
    );
  }
}
