import 'package:fietmobile/ui/views/navigate_page.dart';
import'ui/views/evaluation/pages/evaluation_page.dart';
import 'package:flutter/material.dart';

var routes = <String, WidgetBuilder>{
  '/': (_) => const NavigatePage(),
  '/evaluation':(_) =>const EvaluationPage()
};