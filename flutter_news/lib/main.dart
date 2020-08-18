import 'package:flutter/material.dart';
import 'package:flutter_news/pages/welcome/welcomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '新闻News',
      home: WelcomePage(),
    );
  }
}
