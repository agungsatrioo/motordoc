import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:intl/intl.dart';
// import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
// import 'package:intl/intl.dart';
import '../../../utils/blocs/login/util_login_bloc.dart';
import '../../../utils/blocs/login/util_login_event.dart';
import '../../../utils/blocs/login/util_login_state.dart';
import '../../widgets/widget_button.dart';

class RegisterForm extends StatefulWidget {
  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

enum JenisKelamin { lakilaki, perempuan }

class _RegisterFormState extends State<RegisterForm> {
  JenisKelamin _character = null;
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  DateTime _dateTime = new DateTime.now();

    final _formKey = GlobalKey<FormState>();
  bool _obscureText = true, logout = false;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    String _formatDate = new DateFormat.yMMMd().format(_dateTime);
    _onLoginButtonPressed() {
      BlocProvider.of<LoginBloc>(context).add(
        LoginButtonPressed(
          username: _usernameController.text,
          password: "dummy",
        ),
      );
    }

    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state is LoginFailure) {
          print(state.error.replaceFirst("Exception:", ""));
        } else if (state is LoginInitial) {
          Phoenix.rebirth(context);
        }
      },
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          return Scaffold(
              resizeToAvoidBottomPadding: false,
              body: Container(
                padding: const EdgeInsets.only(right: 38, left: 38),
                child: Form(
                  key: _formKey,
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
                      TextFormField(
                        keyboardType: TextInputType.text,
                          validator: (val) {
                          if (val.length < 1)
                            return "Harap isi kolom ini";
                          else
                            return null;
                        },
                        controller: _usernameController,
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
                      Row(children: <Widget>[
                        Text(
                          _dateTime == DateTime.now() ? "Pilih Tanggal Lahir" : "$_formatDate",
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.calendar_today,
                          ),
                          onPressed: (){
                            showDatePicker(
                              context: context, 
                              initialDate: DateTime.now(), 
                              firstDate: DateTime(1950), 
                              lastDate: DateTime(2021)
                            ).then((date) => {
                              if (_formatDate!=null){
                                setState((){
                                  _formatDate == _formatDate;
                                }
                                )
                              }
                              else{
                                setState((){
                                _dateTime = date;
                              })
                              }
                            }); 
                          }
                        ),
                      ],),
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
                      Row(
                        children: <Widget>[
                            Radio(
                              value: JenisKelamin.lakilaki, 
                              groupValue: _character, 
                              onChanged: (JenisKelamin value){
                                setState(() {
                                  _character = value;
                                });
                              }),
                          Text('Laki-Laki',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          Radio(
                              value: JenisKelamin.perempuan, 
                              groupValue: _character, 
                              onChanged: (JenisKelamin value){
                                setState(() {
                                  _character = value;
                                });
                              }),
                          Text('Perempuan',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                      ],),
                      
                    ],
                  ),
                ),
              ),
              bottomNavigationBar:  Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MyButton.primary(caption: "Simpan",
                    onTap: () {
                     if (_formKey.currentState.validate()) {
                       _onLoginButtonPressed();
                     }
                    },
                    buttonWidth: double.infinity,
                  ),
                ],
              )
          );
        },
      ),
    );
  }
}

