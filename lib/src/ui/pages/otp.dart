import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import '../widgets/widget_button.dart';
import 'home/bottom_nav.dart';
import 'login/login.dart';
import 'register.dart';

class OtpPage extends StatefulWidget{
  @override createState() => _OTPPageState();
}

class _OTPPageState extends State<OtpPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _otpNumberField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: Center(
                      child: Image.asset(
                        "assets/images/logo.png",
                        scale: 4,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text("Masukkan kode verifikasi", style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),),
                  ),
                  Text("yang telah dikirim via SMS ke +62 8xxxxxxxxxx."),
                  Form(
                    key: _formKey,
                    child: TextFormField(
                      controller: _otpNumberField,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        WhitelistingTextInputFormatter.digitsOnly
                      ], // Only numbers can be entered
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Center(
                        child: new MyButton.link(
                            caption: "KIRIM ULANG OTP", onTap: () {
                          Navigator.of(context).pop();
                        })
                    ),
                  ),
                  Center(child: Text("Anda akan menerima SMS.")),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Center(
                        child: new MyButton.link(
                            caption: "Ganti nomor?", onTap: () {
                          Navigator.of(context).pop();
                        })
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            MyButton.primary(caption: "Konfirmasi",
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => RegistPage()
                    )
                );
              },
              buttonWidth: double.infinity,
            ),
          ],
        )
    );
  }

}

class _OtpPageState extends State<OtpPage>{
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
                    "Masukan 6 angka kode",
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
                      "yang telah dikirim via SMS ke +62 8xxxxxxxxxx",
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
                padding: EdgeInsets.only(top: 100),
                child: Text(
                  "Salah nomor ponsel ? Klik ubah nomor di atas",
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
                            builder: (context)=> BottomNav()
                        )
                    );
                  },
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