import 'package:flutter/widgets.dart';

class MotordocLogo extends StatelessWidget {

  const MotordocLogo();

  @override
  Widget build(BuildContext context) {
    return Row(
                children: <Widget>[
                  Image.asset(
                          "assets/images/logo.png",
                          width : 40.0,
                          height: 40.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5, right: 70),
                          child: Text(
                            "MOTORDOC",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color (0xFFFFFFFF),
                            ),
                          ),
                        ),
                ],
              );
  }

}