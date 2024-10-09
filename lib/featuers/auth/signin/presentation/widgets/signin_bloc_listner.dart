import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senior_code_app/core/extensions.dart';
import 'package:senior_code_app/core/list_states.dart';
import 'package:senior_code_app/featuers/auth/managers/auth_cubit/auth_cubit.dart';

import '../../../../../config/routes/app_routes.dart';

class AuthLoginBlocListner extends StatelessWidget {
  const AuthLoginBlocListner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, CubitStates>(
      listener: (context, state) {
        if (state is LoadedState) {
          Routes.bottomNavigationBar.pushAndRemoveAllUntil();
        }
      },
      child: const SizedBox.shrink(),
    );
  }
}
