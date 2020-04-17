import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:motordoc/src/ui/pages/login/login.dart';

class Regist extends StatefulWidget{
  @override
  _regist createState() => _regist();
}

class _regist extends State<Regist>{
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

              Padding(
                padding: EdgeInsets.only(top: 140),
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(7.0),
                  ),
                  color: Color(0xFF3688DE),
                  textColor: Colors.white,
                  padding: EdgeInsets.only(right: 115, left: 115, top: 9, bottom: 9),
                  onPressed: () {},
                  child: const Text(
                      'SIMPAN',
                      style: TextStyle()
                  ),
                ),
              )
            ],
          ),
        )

    );
  }
}