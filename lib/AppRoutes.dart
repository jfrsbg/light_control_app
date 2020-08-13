import 'package:flutter/material.dart';
import 'package:light_control/screens/room/SelectColorPage.dart';
import 'package:light_control/screens/settings/add_room/AddRoomScreen.dart';

class AppRoutes{
  static const String selectColor = "select_color";
  static const String addRoom = "add_room";

  static Route<dynamic> routes(RouteSettings settings){
	switch(settings.name){
	  case selectColor: return MaterialPageRoute(settings: RouteSettings(name: settings.name, arguments: settings.arguments),builder: (context)=> SelectColorPage()); break;
	  case addRoom: return MaterialPageRoute(settings: RouteSettings(name: settings.name, arguments: settings.arguments),builder: (context)=> AddRoomScreen()); break;
	}
  }
}