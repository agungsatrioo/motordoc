import 'package:flutter/material.dart';

import 'src/ui/pages/page_splash.dart';
import 'src/utils/util_theme.dart';

void main(){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Motordoc',
        theme: MotorDocTheme,
        home: SplashScreen(),
      )
  );
}