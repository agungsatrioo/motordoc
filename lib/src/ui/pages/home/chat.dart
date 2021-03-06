import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:motordoc/src/ui/pages/chat/page_chatroom.dart';
import 'package:motordoc/src/ui/pages/home/home.dart';

import '../../widgets/widget_chat.dart';
import '../examples/blank_page.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                  itemBuilder: (ctx, index) {
                    return OpenContainer(
                      transitionType: ContainerTransitionType.fade,
                      openBuilder: (BuildContext _, VoidCallback openContainer) {
                        return ChatroomPage();
                      },
                      tappable: false,
                      closedShape: const RoundedRectangleBorder(),
                      closedElevation: 0.0,
                      closedBuilder: (BuildContext _, VoidCallback openContainer) {
                        return ChatListItem(voidCallback: openContainer);
                      }
                    );
                  }
                )
              ],
            )
        ),
      ),
    );
  }
}
