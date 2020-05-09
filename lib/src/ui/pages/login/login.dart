import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import '../../widgets/widget_button.dart';
import '../../pages/otp.dart';

class LoginPage extends StatefulWidget{
  @override createState() => _LoginPageState();
}


class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _phoneNumberField = TextEditingController();

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
                    child: Text("Masukkan nomor telepon Anda", style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),),
                  ),
                  Text("untuk melanjutkan."),
                  Form(
                    key: _formKey,
                    child: TextFormField(
                      controller: _phoneNumberField,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        WhitelistingTextInputFormatter.digitsOnly
                      ], // Only numbers can be entered
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
              child: Text(
                  "Dengan mendaftar, saya menerima Syarat dan Ketentuan yang berlaku di Motordoc.",
                  textAlign: TextAlign.center,
                  ),
            ),
            MyButton.primary(
              
              caption: "Verifikasi", onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => OtpPage()
                  )
              );
            },
              buttonWidth: double.infinity,),
          ],
      )
    );
  }
}