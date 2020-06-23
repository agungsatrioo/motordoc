import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {

  const LoadingPage();

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Center(child: CircularProgressIndicator()),
        ),
      );
}

class LoadingWidget extends StatelessWidget {

  const LoadingWidget();

  @override
  Widget build(BuildContext context) => Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircularProgressIndicator()),
          Text("Harap tunggu...")
        ],
      ),
    );
}