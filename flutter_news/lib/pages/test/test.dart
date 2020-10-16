import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  int _currentIndex = 0; // 当前所在页面索引
  var _pageController = new PageController(initialPage: 0);
  // 切换页面
  void _pageChange(int index) {
    if (_currentIndex != index) {
      this.setState(() {
        _currentIndex = index;
      });
    }
  }

  // 底部tabBat item
  final _bottomText = ['首页', '我的'];
  final _bottomIcon = [
    [
      new Icon(Icons.home, color: Colors.grey),
      new Icon(Icons.home, color: Colors.blue),
    ],
    [
      new Icon(Icons.account_circle, color: Colors.grey),
      new Icon(Icons.account_circle, color: Colors.blue),
    ]
  ];

  Icon changeIconStyle(int index) {
    if (_currentIndex == index) {
      return _bottomIcon[index][1];
    } else {
      return  _bottomIcon[index][0];
    }
  }

  Text changeTextStyle(int index) {
    if (_currentIndex == index) {
      return Text(_bottomText[index], style: TextStyle(color: Colors.blue),);
    } else {
      return  Text(_bottomText[index], style: TextStyle(color: Colors.grey),);
    }
  }

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body: PageView.builder(
           onPageChanged: _pageChange,
           controller: _pageController,
           itemBuilder: (BuildContext context, int index ) {
             String text = index == 0 ? '首页' : '我的';
             return Center(
               child: Text(text),
             );
           },
          itemCount: 2,
       ),
       bottomNavigationBar: BottomNavigationBar(
         type: BottomNavigationBarType.fixed,
         currentIndex: _currentIndex,
         onTap: (int index) {
           _pageController.animateToPage(index, duration: Duration(milliseconds: 500), curve: ElasticOutCurve(0.8));
           _pageChange(index);
         },
         items: [
           BottomNavigationBarItem(
             icon: changeIconStyle(0),
             title: changeTextStyle(0),
           ),
           BottomNavigationBarItem(
             icon: changeIconStyle(1),
             title: changeTextStyle(1),
           ),
         ],
       ),
     );
  }
}
