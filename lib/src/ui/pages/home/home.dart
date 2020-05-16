import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:line_icons/line_icons.dart';
import 'package:motordoc/src/ui/pages/examples/container_transform_demo.dart';
import 'package:motordoc/src/ui/widgets/widget_home_category_button.dart';
import 'package:motordoc/src/ui/widgets/widget_homepage_wrapper.dart';

import '../../../utils/util_theme.dart';
import '../../../utils/util_user_agent.dart';
import '../../widgets/widget_brand.dart';
import '../../widgets/widget_date.dart';
import '../../widgets/widget_location.dart';

class HomePage extends StatefulWidget{
  UserAgent userAgent;

  HomePage({@required this.userAgent});

  @override createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String name = "";

  getName() {
    widget.userAgent.user.then((val) {
      print(val);
      setState(() {
        name = val.userId;
      });
    });
  }

  @override
  initState(){
    super.initState();
    getName();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: CustomScrollView(
        slivers: <Widget> [
          SliverAppBar(
            automaticallyImplyLeading: false,
            elevation: 0.0,
            pinned: true,
            flexibleSpace: SafeArea(
              child:Container(
                padding: EdgeInsets.only(top:8.0, left:8.0, right:8.0),
                child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        InkWell(
                          child: MotordocLogo(),
                          onTap: () {
                            Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => OpenContainerTransformDemo()
                                )
                            );
                          },
                        ),
                        WidgetLocation()
                      ],
                    ),
              ),
            )
          ),
          SliverToBoxAdapter(
            child: Container(
              color: primary_logo,
              child: Container(
              padding: EdgeInsets.all(8.0),
              child: Column(
              children: <Widget>[
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
                                  "Hai, $name",
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
            )
            ),
          ),
          SliverToBoxAdapter(
            child: HomePageWrapper(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Kategori", style: Theme.of(context).textTheme.subhead),
                  ),
                  HomeCategoryButtonsWidget(),
                   Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Sparepart", style: Theme.of(context).textTheme.subhead),
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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Tahukah Kamu?", style: Theme.of(context).textTheme.subhead),
                  ),
                  ListView.builder(
                    padding: EdgeInsets.zero,
                    physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (ctx,int) {
                        return Material(
                          child: InkWell(
                            child: ListTile(
                              title: Text("Fakta Mengejutkan $int"),
                              subtitle: Text("Fakta Mengejutkan $int"),
                              trailing: Icon(LineIcons.long_arrow_right),
                            ),
                          onTap: () => {}
                          ),
                        );
                      },
                      ),
                ],
              )
            ),
          )
        ]
      ),
    );
  }
}