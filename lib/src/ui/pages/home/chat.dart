import 'package:flutter/material.dart';

import '../../widgets/widget_chat.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("PESAN"),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Container(
            child : Column(
              children: <Widget>[
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (ctx,int) => ChatListItem()
                  ),
              ],
            )
        ),
      ),
    );
  }
}
