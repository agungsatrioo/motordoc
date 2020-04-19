import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:motordoc/src/ui/pages/otp.dart';

class LoginPage extends StatefulWidget{
  @override
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage>{
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
                  padding: EdgeInsets.only(top: 38),
                  child: Text(
                    "Masukan nomor telepon",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 2),
                    child: Text(
                      "Untuk memulai",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  )
              ),
              TextField(
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  WhitelistingTextInputFormatter.digitsOnly
                ], // Only numbers can be entered
              ),
              Padding(
                padding: EdgeInsets.only(top: 223),
                child: Text(
                  "Dengan mendaftar, \nsaya akan menerima Syarat dan Ketentuan Pengguna yang berlaku di Motordoc.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 11,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 11),
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(7.0),
                  ),
                  color: Color(0xFF3688DE),
                  textColor: Colors.white,
                  padding: EdgeInsets.only(right: 115, left: 115, top: 9, bottom: 9),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                            builder: (context)=> OtpPage()
                        )
                    );
                  },
                  child: const Text(
                      'VERIFIKASI',
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