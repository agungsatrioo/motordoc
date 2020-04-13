import 'dart:async';

import 'package:flutter/material.dart';
import 'package:motordoc/src/page/home.dart';

class SplashScreen extends StatefulWidget{
  @override
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen>{

  @override
  void initState(){
    super.initState();
    startSplashScreen();
  }

  startSplashScreen()async{
    var duration = const Duration(seconds: 3);
    return Timer(duration, (){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_){
          return HomePage();
        })
      );
    });
  }

  @override
  Widget build (BuildContext context){
    return Scaffold(
      backgroundColor : Colors.blueAccent,
      body: Center(
        child: Image.asset(
          "assets/images/logo.png",
          width : 250.0,
          height: 250.0,
        ),
      ),
    );
  }
}