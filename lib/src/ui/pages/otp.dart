import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:motordoc/src/ui/pages/login/login.dart';

class OTP extends StatefulWidget{
  @override
  _otp createState() => _otp();
}

class _otp extends State<OTP>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Container(
          padding: const EdgeInsets.only(right: 38, left: 38),
          child: ListView(

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
                    "Masukan 6 angka kode yang telah dikirim via",
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
                      "SMS ke +62 85xxxxxxxxxx",
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
                padding: EdgeInsets.only(top: 37),
                child: FlatButton(
                  child: const Text(
                      'KIRIM ULANG OTP',
                      style: TextStyle(
                        color: Color(0xFF3F8CDE),
                      )

                  ),
                  onPressed: (){},
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(top: 1),
                  child: Text(
                    "kamu akan mendapatkan sms kembali",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: FlatButton(
                  child: const Text(
                      'ubah nomor',
                      style: TextStyle(
                        color: Color(0xFF3F8CDE),
                        fontSize: 10,
                      )
                  ),
                  onPressed: (){
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                            builder: (context)=> LoginPage()
                        )
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 80),
                child: Text(
                  "Salah nomor ponsel ? KLIK UBAH NOMOR DI ATAS",
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
                  onPressed: () {},
                  child: const Text(
                      'KONFIRMASI',
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