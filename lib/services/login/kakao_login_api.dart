import 'package:fietmobile/models/user/fiet_user.dart';
import 'package:fietmobile/services/login/login_api.dart';
import 'package:fietmobile/services/login/user_manager.dart';
import 'package:flutter/services.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:http/http.dart' as http;

class KakaoLoginApi implements LoginApi {
  @override
  Future login() async {
    // TODO: implement login
    OAuthToken? token;
    if (await isKakaoTalkInstalled()) {
      try {
        token = await UserApi.instance.loginWithKakaoTalk();
        print('로그인 성공');
      } catch (error) {
        print('카카오톡 로그인 실패 $error');

        // 사용자가 카카오톡 설치 후 디바이스 권한 요청 화면에서 로그인을 취소한 경우,
        // 의도적인 로그인 취소로 보고 카카오계정으로 로그인 시도 없이 로그인 취소로 처리 (예: 뒤로 가기)
        if (error is PlatformException && error.code == 'CANCELED') {
          return;
        }

        try {
          token = await UserApi.instance.loginWithKakaoAccount();
        } catch (error) {
          print('카카오 계정으로 로그인 실패 $error');
          return;
        }
      }
    } else {
      try {
        token = await UserApi.instance.loginWithKakaoAccount();
        print('카카오계정으로 로그인 성공');
      } catch (error) {
        print('카카오계정으로 로그인 실패 $error');
        return;
      }
    }

    await _createFirebaseUser(token);
    await _saveUserData();
  }

  @override
  Future logout() async {
    // TODO: implement logout
    try {
      print('로그아웃 성공, SDK에서 토큰 삭제');
      return await UserApi.instance.logout();
    } catch (error) {
      print('로그아웃 실패, SDK에서 토큰 삭제 $error');
    }
  }

  // 카카오 토큰을 Firebase Cloud Functions 측으로 전송
  _createFirebaseUser(OAuthToken token) async {
    HttpsCallable getFirebaseToken =
        FirebaseFunctions.instance.httpsCallable('getFirebaseToken');
    final response = await getFirebaseToken.call(<String, dynamic>{
      'access_token': token.accessToken,
    }).catchError((e) => print(e));
    print('카카오 로그인 결과: ${response.data}');
  }

  _saveUserData() async {
    User? kakaoUserData;
    try {
      kakaoUserData = await UserApi.instance.me();
    } catch (e) {
      return;
    }

    Gender? kakaoGender = kakaoUserData.kakaoAccount?.gender;
    FietGender gender = kakaoGender == Gender.male
        ? FietGender.Male
        : (kakaoGender == Gender.female
            ? FietGender.Female
            : FietGender.Bigender);

    UserManager.user = FietUser(
      name: kakaoUserData.kakaoAccount?.name ?? '',
      email: kakaoUserData.kakaoAccount?.email ?? '',
      gender: gender,
    );
  }
}
