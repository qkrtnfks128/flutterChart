import 'dart:html';

import 'package:fietmobile/services/login/login_api.dart';
import 'package:flutter/services.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';

class KakaoLoginApi implements LoginApi {
  @override
  void login() async {
    // TODO: implement login
    if(await isKakaoTalkInstalled()) {
      try {
        await UserApi.instance.loginWithKakaoTalk();
        print('로그인 성공');
      }catch(error){
        print('카카오톡 로그인 실패 $error');

        // 사용자가 카카오톡 설치 후 디바이스 권한 요청 화면에서 로그인을 취소한 경우,
        // 의도적인 로그인 취소로 보고 카카오계정으로 로그인 시도 없이 로그인 취소로 처리 (예: 뒤로 가기)
        if(error is PlatformException && error.code == 'CANCELED') {
          return;
        }

        try {
          await UserApi.instance.loginWithKakaoAccount();
        } catch(error) {
          print('카카오 계정으로 로그인 실패 $error');
        }
      }
    } else {
      try {
        await UserApi.instance.loginWithKakaoAccount();
        print('카카오계정으로 로그인 성공');
      } catch(error) {
        print('카카오계정으로 로그인 실패 $error');
      }
    }
  }

  @override
  void logout() async {
    // TODO: implement logout
    try {
      await UserApi.instance.logout();
      print('로그아웃 성공, SDK에서 토큰 삭제');
    } catch(error) {
      print('로그아웃 실패, SDK에서 토큰 삭제 $error');
    }
  }
}
