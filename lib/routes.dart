import 'package:fietmobile/ui/views/login/pages/login_view.dart';
import 'package:flutter/material.dart';
import 'ui/views/chart/chart_page.dart';

var routes = <String, WidgetBuilder>{
  '/': (_) => LoginView(),
  '/chart':(_)=>const ChartPage(),
};
