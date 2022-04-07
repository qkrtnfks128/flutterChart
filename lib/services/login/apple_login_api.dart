import 'package:fietmobile/services/login/login_api.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class AppleLoginApi implements LoginApi {
  @override
  void login() async {
    // TODO: implement login
    final appleCredential = await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ]
    );

    final oauthCredential = OAuthProvider("apple.com").credential(
      idToken: appleCredential.identityToken,
      accessToken: appleCredential.authorizationCode,
    );

    await FirebaseAuth.instance.signInWithCredential(oauthCredential);
  }

  @override
  void logout() async {
    // TODO: implement logout
    await FirebaseAuth.instance.signOut();
  }
}