import 'package:flutter/material.dart';

class HomePageWrapper extends StatelessWidget {
  final Widget child;

  HomePageWrapper({Key key, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          borderRadius: new BorderRadius.only(
              topLeft: const Radius.circular(8.0),
              topRight: const Radius.circular(8.0))),
              child: child,
    );
  }
}
