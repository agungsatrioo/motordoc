import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../utils/blocs/auth/util_auth_bloc.dart';
import '../../../utils/blocs/login/util_login_bloc.dart';
import '../../../utils/util_user_repository.dart';
import 'page_register_form.dart';

class RegisterPageBloc extends StatelessWidget {
  final UserRepository userRepository;

  RegisterPageBloc({Key key, @required this.userRepository})
      : assert(userRepository != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
            create: (context) {
              return LoginBloc(
                authenticationBloc:
                    BlocProvider.of<AuthenticationBloc>(context),
                userRepository: userRepository,
              );
            },
            child: RegisterForm(),
          );
  }
}
