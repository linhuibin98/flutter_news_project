import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_news/common/utils/utils.dart';
import 'package:flutter_news/common/values/values.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  // email的控制器
  final TextEditingController _emailController = TextEditingController();
  String _email = "";
  // 密码的控制器
  final TextEditingController _passController = TextEditingController();
  String _password = "";


  // logo
  Widget _buildLogo() {
    return Container(
      width: duSetWidth(110),
      margin: EdgeInsets.only(top: duSetHeight(40 + 44.0)), // 顶部系统栏 44px
      child: Column(
        children: <Widget>[
          /// logo
          Container(
            width: duSetWidth(76),
            height: duSetHeight(76),
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Positioned(
                  left: 0,
                  right: 0,
                  top: 0,
                  bottom: 0,
                  child: Container(
                    height: duSetHeight(76),
                    decoration: BoxDecoration(
                      color: AppColors.primaryBackground,
                      boxShadow: [
                        Shadows.primaryShadow,
                      ],
                      borderRadius: BorderRadius.all(Radius.circular((duSetWidth(76 * 0.5))))
                    ),
                    child: Container(),
                  ),
                ),

                Positioned(
                  child: Image.asset(
                    'assets/images/logo.png',
                    fit: BoxFit.none,
                  ),
                )
              ],
            ),
          ),
          /// title
          Container(
            margin: EdgeInsets.only(top: duSetHeight(15)),
            child: Text(
              'SECTOR',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.primaryText,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w600,
                fontSize: duSetFontSize(24),
                height: 1,
              ),
            ),
          ),
          Text(
            'news',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.primaryText,
              fontFamily:  "Avenir",
              fontWeight: FontWeight.w400,
              fontSize: duSetFontSize(16),
              height: 1,
            ),
          ),
        ],
      ),
    );
  }

  // form input
  Widget _buildInput() {

    return Container(
      width: duSetWidth(280),
      margin: EdgeInsets.only(top: duSetHeight(26)),
      decoration: BoxDecoration(

      ),
      child: Column(
        children: <Widget>[
          Container(
            height: duSetHeight(50),
            decoration: BoxDecoration(
              color: Color.fromRGBO(246,246,246, 0)
            ),
            child: TextField(
              controller: _emailController,
              style: TextStyle(
                  color: Color.fromRGBO(45,45,47, 1)
              ),
              decoration: InputDecoration(
                labelText: 'Email',
                filled: true,
                fillColor: Color.fromRGBO(246,246,246, 1),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
                border: OutlineInputBorder(borderSide: BorderSide.none),
              // helperText: '用户名长度为6-10个字母', /// 文本框下面 文字提示
              // errorText : '用户名长度为6-10个字母', /// 显示在输入框的左下部，默认字体为红色
                  suffixIcon: IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () {
                      _emailController.clear();
                      print("_password: $_password");
                      _email = "";
                    },
                  )
              ),
              onChanged: (v) {
                print('onChanged：' + v);
                _email = v;
              },
            ),
          ),
          Container(
            height: duSetHeight(50),
            margin: EdgeInsets.symmetric(vertical: duSetHeight(15)),
            child: TextField(
              controller: _passController,
              obscureText: true,
              style: TextStyle(
                color: Color.fromRGBO(45,45,47, 1)
              ),
              decoration: InputDecoration(
                labelText: 'Password',
                filled: true,
                fillColor: Color.fromRGBO(246,246,246, 1),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
                border: OutlineInputBorder(borderSide: BorderSide.none),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () {
                      _passController.clear();
                      print("_password: $_password");
                      _password = "";
                    },
                  )
              ),
              onChanged: (v) {
                print('onChanged：' + v);
                _password = v;
              },
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                      child: Text('Sign up'),
                      color: Color.fromRGBO(45,45,47, 1),
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                      onPressed: () {

                      }

                  ),
                ),
                SizedBox(
                  width: duSetWidth(10),
                ),
                Expanded(
                  child: FlatButton(
                      child: Text('Sign in'),
                      color: Color.fromRGBO(41,103,255, 1),
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                      onPressed: () {
                        if (_email == "") {
                          print("邮箱不能为空");
                          return;
                        }
                        if (_password == "") {
                          print("密码不能为空");
                          return;
                        }
                        print("登录成功");
                        Navigator.pushNamed(context, '/test');
                      },

                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: duSetHeight(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Forgot password?',
                  style: TextStyle(
                    color: Color.fromRGBO(41,103,255, 1)
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          Center(
            child: Column(
              children: <Widget>[
                _buildLogo(),
                _buildInput(),
              ],
            ),
          ),
        ],
      )
    );
  }
}
