import 'package:flutter/material.dart';

class DefaultTheme {
  static final ThemeData base = ThemeData();

  static TextTheme _textThemeDefault(TextTheme base) => base.copyWith(
    headline1: TextStyle(color: DefaultColors.primary, fontSize: 32, fontWeight: FontWeight.bold),
    headline6: TextStyle(color: DefaultColors.gray, fontSize: 22, fontWeight: FontWeight.bold),
    bodyText1: TextStyle(color: DefaultColors.secondary, fontSize: 22, fontWeight: FontWeight.bold),
    bodyText2: TextStyle(color: DefaultColors.primary, fontSize: 16, fontWeight: FontWeight.bold),
    subtitle1: TextStyle(color: DefaultColors.secondary, fontSize: 16, fontWeight: FontWeight.bold),
    subtitle2: TextStyle(fontSize: 16, color: DefaultColors.orange, fontWeight: FontWeight.bold),
  );

  static ThemeData themeDataDefault() => base.copyWith(
    primaryColor: DefaultColors.primary,
    primaryColorDark: DefaultColors.primaryDark,
    accentColor: DefaultColors.secondary,
    backgroundColor: DefaultColors.background,
    textTheme: _textThemeDefault(base.textTheme),

      inputDecorationTheme: InputDecorationTheme(
        labelStyle: TextStyle(
          color: DefaultColors.secondary,
          fontWeight: FontWeight.normal
        ),
        contentPadding: new EdgeInsets.all(16),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          borderSide: BorderSide(
            width: 1,
            color: DefaultColors.secondary,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          borderSide: BorderSide(
            width: 1,
            color: DefaultColors.secondary,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          borderSide: BorderSide(
            width: 1,
            color: DefaultColors.secondary,
          ),
        ),
      )
  );
}

class DefaultColors{
  static Color primary = Colors.white;
  static Color primaryDark = Color(0xff093B7B);
  static Color secondary = Color(0xff1453a6);
  static Color background = Color(0xfff5f7fa);
  static Color orange = Color(0xfffcb355);
  static Color black = Colors.black;
  static Color gray = Color(0xff4d4d4d);
  static Color light = Color(0xfffbe080);
  static Color powerOn = Color(0xff94eb9e);
  static Color powerOff = Color(0xfffa9595);
}

