import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color (0xFF3688DE),
        resizeToAvoidBottomPadding: false,
        body: Container(
          padding: const EdgeInsets.only(right: 20, left: 20, top: 32),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.asset(
                    "assets/images/logo.png",
                    width : 40.0,
                    height: 40.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5, right: 70),
                    child: Text(
                      "MOTORDOC",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color (0xFFFFFFFF),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.location_on,
                    size: 18,
                    color: Color (0xFFFFFFFF),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Lemahsugih, Bandung",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color (0xFFFFFFFF),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: new BorderRadius.circular(7.0),
                  color: Color (0xFFFFFFFF),
                ),
                width: 360,
                height: 38,
              ),
            ],
          ),
        ),
      );
  }
}