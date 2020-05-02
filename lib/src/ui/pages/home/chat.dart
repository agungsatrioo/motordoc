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
            child : Column(
              children: <Widget>[
                Container(
                  height: 55,
                  width: double.infinity,
                  color: Color(0xFF3688DE),
                  child: Padding(
                    padding: EdgeInsets.only(top:15),
                    child: Text(
                    "PESAN",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  ),
                ),
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
