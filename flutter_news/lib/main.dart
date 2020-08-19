import 'package:flutter/material.dart';
import 'package:flutter_news/pages/welcome/welcome.dart';
import 'package:flutter_news/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, /// 右上角不显示debug条
      title: '新闻News',
      home: WelcomePage(),
      routes: staticRoutes,
    );
  }
}
