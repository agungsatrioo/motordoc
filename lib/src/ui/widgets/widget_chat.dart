import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ChatListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      child: Material(
      child: InkWell(
        child: Container(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/images/logo.png")
            ),
            title: Text("Zanuar"),
            subtitle: Text("Saya: ini tes doang"),
            trailing: Column(
              children: <Widget>[
                Text("20:59")
              ],
            )
          )
        ),
        onTap: () {},
      ),
    ), 
    secondaryActions: <Widget>[
      IconSlideAction(
        caption: 'Hapus',
        color: Colors.red,
        icon: Icons.delete,
        onTap: () {},
      ),
    ],
    );
  } 
}