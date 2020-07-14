import 'package:flutter/material.dart';

class DefaultTheme {
   static final ThemeData base = ThemeData();

   static TextTheme _textThemeDefault(TextTheme base) => base.copyWith(
	  headline1: TextStyle(color: DefaultColors.primary, fontSize: 32, fontWeight: FontWeight.bold),
	  subtitle1: TextStyle(color: Color(0xffb4bdca), fontSize: 17),
	  subtitle2: TextStyle(fontSize: 16, color: Color(0xff424e60), fontWeight: FontWeight.normal),
   );

   static ThemeData themeDataDefault() => base.copyWith(
	  primaryColor: DefaultColors.primary,
	  accentColor: DefaultColors.secondary,
	  backgroundColor: DefaultColors.background,
	  textTheme: _textThemeDefault(base.textTheme)
   );
}

class DefaultColors{
   static Color primary = Colors.white;
   static Color secondary = Color(0xff1453a6);
   static Color background = Color(0xfff6f8fb);
   static Color orange = Color(0xfffcb355);
}

