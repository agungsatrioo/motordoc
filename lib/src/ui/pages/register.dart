import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import '../widgets/widget_button.dart';
import 'home/bottom_nav.dart';

class RegistPage extends StatefulWidget{
  @override
  createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegistPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Container(
          padding: const EdgeInsets.only(right: 38, left: 38),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 109),
                child: Image.asset(
                  "assets/images/logo.png",
                  width : 113.0,
                  height: 113.0,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 63),
                  child: Text(
                    "Nama Lengkap",
                    style: TextStyle(
                      color: Color(0xFF3688DE),
                      fontSize: 9,
                    ),
                  ),
                ),
              ),
              TextField(
                keyboardType: TextInputType.text,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 11),
                  child: Text(
                    "Tanggal Lahir",
                    style: TextStyle(
                      color: Color(0xFF3688DE),
                      fontSize: 9,
                    ),
                  ),
                ),
              ),
              TextField(
                keyboardType: TextInputType.text,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 11),
                  child: Text(
                    "Jenis Kelamin",
                    style: TextStyle(
                      color: Color(0xFF3688DE),
                      fontSize: 9,
                    ),
                  ),
                ),
              ),
              TextField(
                keyboardType: TextInputType.text,
              ),
            ],
          ),
        ),
        bottomNavigationBar: MyButton.primary(
              caption: "Simpan", onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                      builder: (context) => BottomNav()
                  )
              );
            },
              buttonWidth: double.infinity,
        ),
    );
  }
}