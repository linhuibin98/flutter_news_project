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
  // 密码的控制器
  final TextEditingController _passController = TextEditingController();

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
              style: TextStyle(
                  color: Color.fromRGBO(45,45,47, 1)
              ),
              decoration: InputDecoration(
                labelText: 'Email',
                filled: true,
                fillColor: Color.fromRGBO(246,246,246, 1),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
                border: OutlineInputBorder(borderSide: BorderSide.none),
              ),
              onChanged: (v) {
                print('onChanged：' + v);
              },
            ),
          ),
          Container(
            height: duSetHeight(50),
            margin: EdgeInsets.symmetric(vertical: duSetHeight(15)),
            child: TextField(
              style: TextStyle(
                color: Color.fromRGBO(45,45,47, 1)
              ),
              decoration: InputDecoration(
                labelText: 'Password',
                filled: true,
                fillColor: Color.fromRGBO(246,246,246, 1),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
                border: OutlineInputBorder(borderSide: BorderSide.none),
              ),
              onChanged: (v) {
                print('onChanged：' + v);
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

                      }

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
      body: Center(
        child: Column(
          children: <Widget>[
            _buildLogo(),
            _buildInput(),
          ],
        ),
      ),
    );
  }
}
