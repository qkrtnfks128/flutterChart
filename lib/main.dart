import 'package:cloud_functions/cloud_functions.dart';
import 'package:fietmobile/routes.dart';
import 'package:fietmobile/ui/common/fiet_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';

GetIt getIt = GetIt.instance;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  // Use Firebase Emulator running in local.
  //FirebaseFunctions.instance.useFunctionsEmulator('localhost', 5001);

  KakaoSdk.init(nativeAppKey: 'a4e49770bf916cc2ec223321723f111a');

  // getIt.registerSingleton<UserManager>()
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true, //너비와 높이의 최소값에 따라 텍스트를 조정할지 여부
      splitScreenMode: true, //	분할 화면 지원
      builder: () => MaterialApp(
        title: 'Flutter Demo',
        builder: (context, widget) {
          ScreenUtil.setContext(context);
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: widget!,
          );
        },
        theme: ThemeData(
            primarySwatch: Colors.blue,
            appBarTheme: const AppBarTheme(
                backgroundColor: Colors.white,
                elevation: 0,
                titleTextStyle:
                    TextStyle(color: Colors.black, fontSize: 14)), //공통앱바

            scaffoldBackgroundColor: Colors.white //공통배경색
            ),
        initialRoute: '/',
        routes: routes,
      ),
    );
  }
}
