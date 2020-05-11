// To parse this JSON data, do
//
//     final chatListItem = chatListItemFromJson(jsonString);

import 'dart:convert';

class ChatListItem {
    String chatId;
    String chatName;
    Map<String, ChatParticipant> chatParticipant;
    Map<String, MessageItem> messageItem;
    MessageItem lastMessage;

    ChatListItem({
        this.chatId,
        this.chatName,
        this.chatParticipant,
        this.messageItem,
        this.lastMessage,
    });

    factory ChatListItem.fromRawJson(String str) => ChatListItem.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory ChatListItem.fromJson(Map<String, dynamic> json) => ChatListItem(
        chatId: json["chat_id"],
        chatName: json["chat_name"],
        chatParticipant: Map.from(json["chat_participant"]).map((k, v) => MapEntry<String, ChatParticipant>(k, ChatParticipant.fromJson(v))),
        messageItem: Map.from(json["message_item"]).map((k, v) => MapEntry<String, MessageItem>(k, MessageItem.fromJson(v))),
        lastMessage: MessageItem.fromJson(json["last_message"]),
    );

    Map<String, dynamic> toJson() => {
        "chat_id": chatId,
        "chat_name": chatName,
        "chat_participant": Map.from(chatParticipant).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "message_item": Map.from(messageItem).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "last_message": lastMessage.toJson(),
    };
}

class ChatParticipant {
    String userId;
    String userName;
    String userFullname;
    DateTime lastLogin;

    ChatParticipant({
        this.userId,
        this.userName,
        this.userFullname,
        this.lastLogin,
    });

    factory ChatParticipant.fromRawJson(String str) => ChatParticipant.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory ChatParticipant.fromJson(Map<String, dynamic> json) => ChatParticipant(
        userId: json["user_id"],
        userName: json["user_name"],
        userFullname: json["user_fullname"],
        lastLogin: DateTime.parse(json["last_login"]),
    );

    Map<String, dynamic> toJson() => {
        "user_id": userId,
        "user_name": userName,
        "user_fullname": userFullname,
        "last_login": lastLogin.toIso8601String(),
    };
}

class MessageItem {
    ChatParticipant chatParticipant;
    String messageBody;
    DateTime timestamp;
    int urgency;
    int status;

    MessageItem({
        this.chatParticipant,
        this.messageBody,
        this.timestamp,
        this.urgency,
        this.status,
    });

    factory MessageItem.fromRawJson(String str) => MessageItem.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory MessageItem.fromJson(Map<String, dynamic> json) => MessageItem(
        chatParticipant: ChatParticipant.fromJson(json["chat_participant"]),
        messageBody: json["message_body"],
        timestamp: DateTime.parse(json["timestamp"]),
        urgency: json["urgency"],
        status: json["status"],
    );

    Map<String, dynamic> toJson() => {
        "chat_participant": chatParticipant.toJson(),
        "message_body": messageBody,
        "timestamp": timestamp.toIso8601String(),
        "urgency": urgency,
        "status": status,
    };
}
