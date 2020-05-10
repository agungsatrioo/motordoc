import 'dart:async';
import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:motordoc/src/models/model_user.dart';
import 'package:motordoc/src/utils/util_database.dart';
import 'package:motordoc/src/utils/util_rest.dart';

class UserAgent {
  static final UserAgent _singleton = UserAgent._internal();
  static DatabaseHelper _db;
  static NetworkUtil _netutil;

  factory UserAgent() {
    _db = new DatabaseHelper();
    _netutil = new NetworkUtil();

    return _singleton;
  }

  UserAgent._internal();

  Future<dynamic> loginDummy({
    @required String username,
  }) {
    return Future.value(
      {"data": User(
        userId: username,
        userLevel: "1",
        userToken: "1",
        lastLogin: DateTime.now()
      ).toRawJson()}
    );
  }

  //TODO: Belum kepikiran
  Future<dynamic> login(
      String login_url, String username, String password) async {
    await Future.delayed(Duration(seconds: 2));

    Map<String, String> authParams = {
      "content-type": "application/json",
      "Authorization":
          "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.IlNpZmxhYkFwcElucHV0Ig.G7Dnvzs6KKvw7JKy529dkey2mYrUVtDGh2ediS3IRIE"
    };

    return _netutil.post(login_url, body: {
      "identity": username,
      "password": password
    }).timeout(Duration(minutes: 1), onTimeout: () {
      throw new TimeoutException("Waktu tersambung habis.");
    }).catchError((e) {
      print(e.toString());
      throw new Exception("Gagal login.");
    }).then((dynamic res) {
      if (res['status'] == "failed")
        throw new Exception(res['msg']);
      else
        return res;
    });
  }

  Future<User> get user async {
    var user = await _db.getUser();
    return User.fromJson(user);
  }

  Future<bool> get isLogged async {
    return await _db.isLoggedIn();
  }
}
