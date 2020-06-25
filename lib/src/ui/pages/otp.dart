import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import '../../utils/util_user_repository.dart';
import '../widgets/widget_button.dart';
import 'login/login.dart';
import 'register/page_register_bloc.dart';

class OtpPage extends StatefulWidget{
  @override createState() => _OTPPageState();
}

class _OTPPageState extends State<OtpPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _otpNumberField = TextEditingController();
  UserRepository userRepository = UserRepository();

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
                          
                        })
                    ),
                  ),
                  Center(child: Text("Anda akan menerima SMS.")),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Center(
                        child: new MyButton.link(
                            caption: "Ganti nomor?", onTap: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()
                              )
                          );
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
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                        builder: (context) => RegisterPageBloc(userRepository: userRepository)
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