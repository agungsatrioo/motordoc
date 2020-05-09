import 'dart:async';

import 'package:flutter/material.dart';

import '../../utils/util_theme.dart';
import 'login/login.dart';


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

  startSplashScreen() async{
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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary_logo,
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Image.asset("assets/images/logo.png",scale: 3),
              SizedBox(height: 10,),
              Text("MotorDoc", 
              style: Theme.of(context).textTheme.display1.merge(TextStyle(color: Theme.of(context).colorScheme.onPrimary)),
              )
            ],
          ),
        )
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("Kelompok 1 PPL", 
              style: Theme.of(context).textTheme.subhead.merge(TextStyle(color: Theme.of(context).colorScheme.onPrimary)),
              )
          ],
        )
      ),
    );
  }


}