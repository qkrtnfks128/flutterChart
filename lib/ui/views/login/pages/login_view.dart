import 'package:fietmobile/app_settings.dart';
import 'package:fietmobile/services/login/apple_login_api.dart';
import 'package:fietmobile/services/login/kakao_login_api.dart';
import 'package:fietmobile/ui/common/fiet_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);
  FietTheme fietTheme = FietTheme();
  AppSettings appSettings = AppSettings(isDarkMode: false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff6B5BE8),
        body: Column(
          children: [
            Container(
              height: 574,
              child: Center(
                child: Text(
                  "FIET와 함께\n건강한 습관을 만들어 보아요.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    // color: appSettings.isDarkMode
                    //     ? fietTheme.brand['darkMode'][100]
                    //     : fietTheme.brand['lightMode'][100],
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                KakaoLoginApi().login();
              },
              child: Container(
                width: 342,
                height: 54,
                child: Image.asset("assets/images/Sign in-kakao@3x.png"),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () async {
                AppleLoginApi apple = AppleLoginApi();
                await apple.login();
              },
              child: Container(
                width: 342,
                height: 54,
                child: Image.asset("assets/images/Sign in-apple-black@3x.png"),
              ),
            ),
          ],
        ));
  }
}
