import 'dart:async';

import 'package:flutter/material.dart';
import 'package:motordoc/src/page/login/login.dart';

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
    var duration = const Duration(seconds: 5);
    return Timer(duration, (){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_){
          return LoginPage();
        })
      );
    });
  }

  @override
  Widget build (BuildContext context){
    return Scaffold(
      backgroundColor : Color(0xFF3688DE),
      body: Center(
        child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 203,left: 67, right: 67),
            child: Image.asset(
              "assets/images/logo.png",
              width : 250.0,
              height: 250.0,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 12.0),
            child: Text(
              "MOTORDOC",
              style: TextStyle(
                fontSize:36.0,
                fontWeight: FontWeight.normal,
                color: Color(0xFFFFFFFF),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 140),
            child: Text(
              "V 1.0",
                style: TextStyle(
                  fontSize: 10,
                  color: Color(0xFFFFFFFF),
              )
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 1),
            child: Text(
                "Developed by Group 1 PPL",
                style: TextStyle(
                  fontSize: 10,
                  color: Color(0xFFFFFFFF),
                )
            ),
          ),
        ],
        ),
      ),
    );
  }
}