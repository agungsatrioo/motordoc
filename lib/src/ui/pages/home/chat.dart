import 'package:flutter/material.dart';
import 'package:motordoc/src/ui/widgets/widget_chat.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (ctx,int) => ChatListItem()
              ),
        ),
      ),
    );
  }
}
