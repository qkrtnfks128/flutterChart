import 'package:fietmobile/services/login/login_api.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class AppleLoginApi implements LoginApi {
  @override
  Future login() async {
    // TODO: implement login
    final appleCredential = await SignInWithApple.getAppleIDCredential(scopes: [
      AppleIDAuthorizationScopes.email,
      AppleIDAuthorizationScopes.fullName,
    ]);

    print(appleCredential.identityToken!.toString());

    final oauthCredential = OAuthProvider("apple.com").credential(
      idToken: appleCredential.identityToken,
      accessToken: appleCredential.authorizationCode,
    );
    return await FirebaseAuth.instance.signInWithCredential(oauthCredential);
  }

  @override
  Future logout() async {
    // TODO: implement logout
    return await FirebaseAuth.instance.signOut();
  }
}
