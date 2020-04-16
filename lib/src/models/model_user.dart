// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

class User {
  String userId;
  String userLevel;
  String userToken;
  DateTime lastLogin;

  User({
    @required this.userId,
    @required this.userLevel,
    @required this.userToken,
    @required this.lastLogin,
  });

  factory User.fromRawJson(String str) => User.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory User.fromJson(Map<String, dynamic> json) => User(
    userId: json["user_id"],
    userLevel: json["user_level"],
    userToken: json["user_token"],
    lastLogin: DateTime.parse(json["last_login"]),
  );

  Map<String, dynamic> toJson() => {
    "user_id": userId,
    "user_level": userLevel,
    "user_token": userToken,
    "last_login": lastLogin.toIso8601String(),
  };
}
