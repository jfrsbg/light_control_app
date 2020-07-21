import 'package:flutter/material.dart';
import 'package:light_control/room/SelectColorPage.dart';

class AppRoutes{
  static const String selectColor = "select_color";

  static Route<dynamic> routes(RouteSettings settings){
	switch(settings.name){
	  case selectColor: return MaterialPageRoute(settings: RouteSettings(name: settings.name, arguments: settings.arguments),builder: (context)=> SelectColorPage()); break;
	}
  }
}