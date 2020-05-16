import 'package:flutter/material.dart';

class HomeCategoryButtonsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        height: 100,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 15,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                  padding: EdgeInsets.symmetric(horizontal: 2.0),
                  child: _HomeCategoryButtonsItem());
            }),
      );
}

class _HomeCategoryButtonsItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        borderRadius: BorderRadius.circular(4),
        onTap: () {},
        child: Container(
            padding: EdgeInsets.all(4.0),
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: Theme.of(context).primaryColor),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Menu"),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Icon(Icons.bookmark),
                )
              ],
            )),
      ),
    );
  }
}
