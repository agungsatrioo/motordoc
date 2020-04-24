import 'package:flutter/material.dart';

import 'src/ui/pages/page_splash.dart';

void main(){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Motordoc',
        theme: ThemeData.light().copyWith(
            buttonTheme: ButtonThemeData(
                colorScheme: ColorScheme(
                  primary: Color(0xFF3688DE),
                  onPrimary: Colors.white,
                  primaryVariant: Color(0xFF3688DE),
                  secondary: Color(0xff4c9ee7),
                  secondaryVariant: Color(0xff4c9ee7),
                  onSecondary: Colors.white,
                  error: Color(0xffdc3545),
                  onError: Colors.white,
                  surface: Color(0xfff8f9fa),
                  onSurface: Colors.black,
                  background: Color(0xfff8f9fa),
                  onBackground: Colors.black,
                  brightness: Brightness.light,
                )
            )
        ),
        home: SplashScreen(),
      )
  );
}