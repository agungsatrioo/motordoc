import 'package:flutter/material.dart';
import 'package:motordoc/src/common/splash.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Motordoc',
    home: SplashScreen(),
  ));
}