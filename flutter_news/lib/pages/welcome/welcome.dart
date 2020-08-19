import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_news/common/utils/utils.dart';
import 'package:flutter_news/common/values/values.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomePage extends StatelessWidget {

  /// 页头标题
  Widget _buildPageHeadTitle() {

    return Container(
      margin: EdgeInsets.only(top: duSetHeight(65),),
      child: Text(
        'Features',
        style: TextStyle(
          color: AppColors.primaryText,
          fontFamily: "Montserrat",
          fontWeight: FontWeight.w600,
          fontSize: duSetFontSize(24),
        ),
      ),
    );
  }

  /// 页头说明
  Widget _buildPageHeadDetail() {
    return Container(
      width: duSetWidth(242),
      height: duSetHeight(70),
      margin: EdgeInsets.only(top: duSetHeight(14),),
      child: Text(
        'The best of news channels all in one place. Trusted sources and personalized news for you.',
        style: TextStyle(
          color: AppColors.primaryText,
          fontFamily: 'Avenir',
          fontSize: duSetFontSize(16),
          height: 1.3,
        ),
      ),
    );
  }

  /// Featrue项目
  Widget _buildPageFeatureItem({String imageName, String intro, double marginTop = 40.0}) {
    return Container(
      child: Container(
        width: duSetWidth(295),
        height: duSetHeight(80),
        margin: EdgeInsets.only(top: duSetHeight(marginTop),),
        child: Row(
          children: [
            /// 图片
            Container(
              width: duSetWidth(80),
              height: duSetHeight(80),
              child: Image.asset(
                'assets/images/featrue-$imageName.png',
              ),
            ),
            Spacer(),
            /// 文字描述
            Container(
              width: duSetWidth(195),
              child: Text(
                  intro,
                style: TextStyle(
                  color: AppColors.primaryText,
                  fontFamily: 'Avenir',
                  fontWeight: FontWeight.normal,
                  fontSize: duSetFontSize(16),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Featrue项目容器
 List<Widget> _buildPageFeatureWrapper() {
    var itemData = [
      { 'imageName': '1', 'intro': 'Compelling photography and typography provide a beautiful reading', 'marginTop': 86.0, },
      { 'imageName': '2', 'intro': 'Sector news never shares your personal data with advertisers or publishers', 'marginTop': 40.0, },
      { 'imageName': '3', 'intro': 'You can get Premium to unlock hundreds of publications', 'marginTop': 40.0, },
    ];

    return itemData.map((item) => _buildPageFeatureItem(
        imageName: item['imageName'],
        intro: item['intro'],
        marginTop: item['marginTop']
    ),).toList();
  }

  /// 开始按钮
  Widget _buildStartButton(BuildContext context) {
    return Container(
      width: duSetWidth(295),
      height: duSetHeight(44),
      margin: EdgeInsets.only(bottom: duSetHeight(20)),
      child: FlatButton(
        color: AppColors.primaryElement,
        textColor: AppColors.primaryElementText,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(duSetWidth(6)))
        ),
        child: Text('Get Started'),
        onPressed: () {
          Navigator.pushNamed(
            context,
            "/sign-in",
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // 高度去掉 顶部、底部 导航
    ScreenUtil.init(context,
        width: 375, height: 812 - 44 - 34, allowFontScaling: true);

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            _buildPageHeadTitle(),
            _buildPageHeadDetail(),
            ..._buildPageFeatureWrapper(),
            Spacer(),
            _buildStartButton(context),
          ],
        ),
      ),
    );
  }
}
