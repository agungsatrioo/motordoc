import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

import '../../../models/model_user.dart';

abstract class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();

  @override
  List<Object> get props => [];
}

class AppStarted extends AuthenticationEvent {}

class LoggedIn extends AuthenticationEvent {
  final User user;

  const LoggedIn({@required this.user});

  @override
  List<Object> get props => [user];

  @override
  String toString() => 'LoggedIn { token: ${user.userId} }';
}

class LoggedOut extends AuthenticationEvent {}