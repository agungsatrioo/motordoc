import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'widget_menu.dart';

class WidgetSparepartItem extends StatelessWidget implements WidgetMenu {
  @override
  var icon, name, action;

  Uri imageUri;
  String lokasi, harga;

  WidgetSparepartItem({
    @required this.name,
    @required this.imageUri,
    @required this.lokasi,
    @required this.harga,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
        height: 200,
        width: 150,
        child: Stack(children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: CachedNetworkImage(
              imageUrl: imageUri.toString(),
              fit: BoxFit.fitWidth,
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  CircularProgressIndicator(value: downloadProgress.progress),
              errorWidget: (context, url, error) => Icon(Icons.broken_image),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                padding: EdgeInsets.all(8),
                width: double.infinity,
                decoration: new BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        name,
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1
                            .apply(color: Colors.white),
                      ),
                      Text(
                        harga,
                        style: Theme.of(context)
                            .textTheme
                            .caption
                            .apply(color: Colors.white),
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            size: 10,
                            color: Color(0xFFFFFFFF),
                          ),
                          Text(
                            lokasi,
                            style: Theme.of(context)
                                .textTheme
                                .caption
                                .apply(color: Colors.white),
                          ),
                        ],
                      )
                    ])),
          )
        ]));
  }
}
