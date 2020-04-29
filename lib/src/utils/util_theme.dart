import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

final Color primary_logo = Color(0xFF3688DE);

final Color primary = Color(0xff1890ff);
final Color link = Color(0xff1890ff);
final Color success = Color(0xff52c41a);
final Color warning = Color(0xfffaad14);
final Color error = Color(0xfff5222d);

final Color headingText = Color.fromRGBO(0, 0, 0, .85);
final Color mainText = Color.fromRGBO(0, 0, 0, .65);
final Color secondaryText = Color.fromRGBO(0, 0, 0, .45);
final Color disabledText = Color.fromRGBO(0, 0, 0, .25);

final Color mainBorder = Color(0xffd9d9d9);

final double fontSizeBase = 14.0;

final double radiusBase = 4;

// ignore: non_constant_identifier_names
ThemeData get MotorDocTheme => ThemeData.from(
      colorScheme: ColorScheme(
          primary: primary_logo,
          primaryVariant: primary,
          secondary: Color(0xff468ddb),
          secondaryVariant: Color(0xff499cea),
          surface: Color(0xffe3e3e3),
          background: Colors.white,
          error: error,
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          onSurface: Colors.black,
          onBackground: Colors.black,
          onError: Colors.white,
          brightness: Brightness.light),
    ).copyWith(
      appBarTheme: AppBarTheme(elevation: 0.0),
      buttonTheme: ButtonThemeData(
        padding: EdgeInsets.only(right: 8.0, bottom: 12.0),
        disabledColor: disabledText,
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(2.0),
        ),
      ),
    );
