import 'package:fietmobile/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,//너비와 높이의 최소값에 따라 텍스트를 조정할지 여부
        splitScreenMode: true,//	분할 화면 지원
        builder: () =>
         MaterialApp(
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
              appBarTheme: const AppBarTheme(backgroundColor:Colors.white ,elevation: 0, titleTextStyle:TextStyle(color:Colors.black,fontSize:14) ),//공통앱바
              scaffoldBackgroundColor:  Colors.white//공통배경색
          ),
          initialRoute: '/',
          routes: routes,
        )

    );
  }
}

