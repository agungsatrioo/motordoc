import 'package:flutter/material.dart';

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
      body: SafeArea( 
        child:Container(
          child : Column(
            children: <Widget>[
              Container(
                height: 55,
                width: double.infinity,
                color: Color(0xFF3688DE),
                child: Padding(
                  padding: EdgeInsets.only(top:15),
                  child: Text(
                    "PROFIL",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
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
                child: MyButton.primary(
                  caption: "LOG OUT", onTap: () {
                  Navigator.of(context).push(
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
