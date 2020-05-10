import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../../widgets/widget_button.dart';
import '../login/login.dart';

class PersonPage extends StatefulWidget {
  @override
  _PersonPageState createState() => _PersonPageState();
}

class _PersonPageState extends State<PersonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("PROFIL SAYA"),
        centerTitle: true,
      ),
      body: SafeArea( 
        child:Container(
          child : Column(
            children: <Widget>[
              Container(
                  padding: const EdgeInsets.only(top: 50),
                  child:  CircleAvatar(
                    radius: 72,
                    child: ClipOval(
                      child: Container(
                        width: 200,
                        height: 200,
                      ),
                    )
                  ),
                ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  "Rifqi Sambas",
                  style:TextStyle(
                    fontSize: 24,
                    color: Color(0xFF3688DE),
                  )
                )
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  "+62 8xx xxxx xxxx",
                  style:TextStyle(
                    fontSize: 14,
                    color: Color(0xFF3688DE),
                  )
                )
              ),
              Padding(
                padding: const EdgeInsets.only(top: 28),
                child: MyButton.flatPrimary(
                  caption: "LOG OUT", 
                  trailing: Icon(LineIcons.arrow_right),
                  onTap: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                          builder: (context) => LoginPage()
                      )
                  );
                },
              buttonWidth: double.infinity,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
