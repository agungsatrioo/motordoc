import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:motordoc/src/utils/util_user_agent.dart';

import '../models/model_user.dart';
import 'util_database.dart';

class UserRepository {
  static final UserRepository _singleton = UserRepository._internal();

  factory UserRepository() => _singleton;
  DatabaseHelper _db;
  UserAgent _userAgent;

  UserRepository._internal() {
    _db = DatabaseHelper();
    _userAgent = UserAgent();
  }

  Future<User> authenticate({
    @required String username,
    @required String password,
  }) async {
    return _userAgent
        .loginDummy(username: "Rifqi") //pake login dummy dulu
        .then((response) async {
      return User.fromRawJson(response['data']);
    });
  }

  Future<void> deleteUser() async {
    /// delete from keystore/keychain
    await Future.delayed(Duration(seconds: 1));
    await _db.deleteUsers();
    return;
  }

  Future<void> writeUser(User user) async {
    await _db.saveUser(user);
    await Future.delayed(Duration(seconds: 1));

    return;
  }

  Future<bool> hasToken() async {
    /// read from keystore/keychain
    return (await _db.isLoggedIn());
  }
}