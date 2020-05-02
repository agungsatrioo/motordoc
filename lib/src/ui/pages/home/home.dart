import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:motordoc/src/ui/widgets/widget_brand.dart';
import 'package:motordoc/src/ui/widgets/widget_date.dart';
import 'package:motordoc/src/ui/widgets/widget_location.dart';
import 'package:motordoc/src/utils/util_theme.dart';

class HomePage extends StatefulWidget{
  @override createState() => _MyHomePage();
}

class _MyHomePage extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary_logo,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      MotordocLogo(),
                      WidgetLocation()
                    ],
                  ),
                  Container(
                        decoration: BoxDecoration(
                          borderRadius: new BorderRadius.circular(7.0),
                          color: Color (0xFFFFFFFF),
                        ),
                        width: 360,
                        height: 38,
                        child: Row(
                            children:<Widget>[
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal:8.0, vertical:2.0),
                                child: Icon(
                                  Icons.search,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(7.0),
                                child: Text(
                                  "Ada masalah apa dengan motormu?",
                                  style: TextStyle(
                                    color: Color (0xFFC1C0C0),
                                  ),
                                ),
                              ),
                            ]
                        ),
                      ),
                      Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 14, right: 23.0, left: 12.0),
                              child: Image.asset(
                                "assets/images/mechanic.png",
                                height: 115.0,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                DateWidget(),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5.0),
                                  child: Text(
                                    "Hai Rifqi Sambas",
                                    style: TextStyle(
                                      color: Color(0xFFFFFFFF),
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.w100,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5.0),
                                  child: Text(
                                    "Ada yang bisa kami bantu?",
                                    style: TextStyle(
                                      color: Color(0xFFFFFFFF),
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w100,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                ],
              ),
            ),
            Expanded(
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(7.0),
                        topRight: const Radius.circular(7.0))
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        'Headline',
                        style: TextStyle(fontSize: 18),
                      ),
                      Container(
                        height: 75,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 15,
                          itemBuilder: (BuildContext context, int index) => Card(
                            child: Center(child: Text('Dummy Card Text')),
                          ),
                        ),
                      ),
                      Text(
                        'Headline Mid',
                        style: TextStyle(fontSize: 18),
                      ),
                      Container(
                        height: 75,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 15,
                          itemBuilder: (BuildContext context, int index) => Card(
                            child: Center(child: Text('Dummy Card Text')),
                          ),
                        ),
                      ),
                      Text(
                        'Demo Headline 2',
                        style: TextStyle(fontSize: 18),
                      ),
                      Expanded(
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemBuilder: (ctx,int){
                            return Card(
                              child: ListTile(
                                title: Text('Motivation $int'),
                                subtitle: Text('this is a description of the motivation')),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
          ),
        )
      )
    );
  }
}