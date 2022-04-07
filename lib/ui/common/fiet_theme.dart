import 'package:fietmobile/app_settings.dart';
import 'package:flutter/material.dart';



class FietTheme {
  AppSettings appSettings = AppSettings();
  ThemeData fietDarkTheme = ThemeData(

    textTheme: const TextTheme(
      bodyText2: TextStyle(color: Colors.black) // default 텍스트
    ),
  );

  Map<String, dynamic> brand = {
    'lightMode' : {
      50 : Color(0xffEFEDFF),
      100 : Color(0xffD7D3FF),
      200 : Color(0xffBCB4F7),
      300 : Color(0xffA9A0F7),
      400 : Color(0xff8C81EF),
      500 : Color(0xff6B5BE8),
      600 : Color(0xff675CAF),
      700 : Color(0xff544D7E),
      800 : Color(0xff49465D),
      900 : Color(0xff38373E),
    },
    'darkMode' : {
      50 : Color(0xffEFEDFF),
      100 : Color(0xffD7D3FF),
      200 : Color(0xffBCB4F7),
      300 : Color(0xffA9A0F7),
      400 : Color(0xff8C81EF),
      500 : Color(0xff6B5BE8),
      600 : Color(0xff675CAF),
      700 : Color(0xff544D7E),
      800 : Color(0xff49465D),
      900 : Color(0xff38373E),
    }
  };
}