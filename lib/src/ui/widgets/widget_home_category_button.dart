import 'package:flutter/material.dart';
import 'package:motordoc/src/models/model_home_category_menu.dart';

class HomeCategoryButtonsWidget extends StatelessWidget {
  final List<HomeCategoryMenuItemModel> list;

  HomeCategoryButtonsWidget({@required this.list}) {
    assert(list != null);
  }

  @override
  Widget build(BuildContext context) => Container(
        height: 100,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: list.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                  padding: EdgeInsets.symmetric(horizontal: 2.0),
                  child: _HomeCategoryButtonsItem(
                    menuItem: list[index],
                  ));
            }),
      );
}

class _HomeCategoryButtonsItem extends StatelessWidget {
  final HomeCategoryMenuItemModel menuItem;

  _HomeCategoryButtonsItem({@required this.menuItem});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        borderRadius: BorderRadius.circular(4),
        onTap: () => menuItem.onClick(),
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
                menuItem.caption,
                Align(
                  alignment: Alignment.bottomRight,
                  child: menuItem.icon,
                )
              ],
            )),
      ),
    );
  }
}
