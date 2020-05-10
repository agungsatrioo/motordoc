import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'src/ui/pages/home/bottom_nav.dart';
import 'src/ui/pages/login/login.dart';
import 'src/ui/pages/page_splash.dart';
import 'src/ui/widgets/widget_loading.dart';
import 'src/utils/blocs/auth/util_auth_bloc.dart';
import 'src/utils/blocs/auth/util_auth_event.dart';
import 'src/utils/blocs/auth/util_auth_state.dart';
import 'src/utils/blocs/util_bloc_delegate.dart';
import 'src/utils/util_theme.dart';
import 'src/utils/util_user_repository.dart';

void main() {
  BlocSupervisor.delegate = SimpleBlocDelegate();
  final userRepository = UserRepository();

  runApp(
    BlocProvider<AuthenticationBloc>(
      create: (context) {
        return AuthenticationBloc(userRepository: userRepository)
          ..add(AppStarted());
      },
      child: Phoenix(child: MotordocApp(userRepository: userRepository)),
    ),
  );
}

class MotordocApp extends StatelessWidget {
  final UserRepository userRepository;

  MotordocApp({Key key, @required this.userRepository}) : super(key: key) {
    initializeDateFormatting("id");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: true,
        title: 'Motordoc',
        theme: MotorDocTheme,
        home:  BlocBuilder<AuthenticationBloc, AuthenticationState>(
            // ignore: missing_return
            builder: (context, state) {
              if (state is AuthenticationUninitialized) {
                return SplashScreen();
              }
              if (state is AuthenticationAuthenticated) {
                return BottomNav();
              }
              if (state is AuthenticationUnauthenticated) {
                return LoginPage();
              }
              if (state is AuthenticationLoading) {
                return LoadingPage();
              }
            },
          ),
      );
  }

}