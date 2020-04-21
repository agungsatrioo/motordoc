import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color (0xFF3688DE),
        resizeToAvoidBottomPadding: false,
        body: Column(
            children: <Widget>[
              Container(
                  padding: const EdgeInsets.only(right: 20, left: 20, top: 32),
                  child: Column(
                    children: <Widget>[
                      Row(
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
                          Icon(
                            Icons.location_on,
                            size: 18,
                            color: Color (0xFFFFFFFF),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "Lemahsugih, Bandung",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color (0xFFFFFFFF),
                              ),
                            ),
                          ),
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
                                padding: const EdgeInsets.all(2.0),
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
                      Container(
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 14, right: 23.0, left: 12.0),
                              child: Image.asset(
                                "assets/images/mechanic.png",
//                          width: 99.0,
                                height: 115.0,
                              ),
                            ),
                            Column(
                              children: <Widget>[
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Sabtu, 4 April 2020",
                                    style: TextStyle(
                                      color: Color(0xFFFFFFFF),
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w100,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5.0),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Hai nama",
                                      style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.w100,
                                      ),
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
//                  padding: const EdgeInsets.only(top: 11, left: 18),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        'Headline',
                        style: TextStyle(fontSize: 18),
                      ),
                      Expanded(
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
    );
  }
}