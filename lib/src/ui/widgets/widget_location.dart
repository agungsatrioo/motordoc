import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WidgetLocation extends StatelessWidget {

  const WidgetLocation();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          Icons.location_on,
          size: 18,
          color: Color (0xFFFFFFFF),
        ),
        Text(
          "Lemahsugih, Bandung",
          style: TextStyle(
            fontSize: 14,
            color: Color (0xFFFFFFFF),
          ),
        ),
      ],
    );
  }

}