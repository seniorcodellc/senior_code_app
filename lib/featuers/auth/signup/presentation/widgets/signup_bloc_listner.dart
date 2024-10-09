import 'package:senior_code_app/core/extensions.dart';

import '../../../../../config/routes/app_routes.dart';
import '../../../../../core/list_states.dart';
import '../../../../../exports.dart';
import '../../../managers/auth_cubit/auth_cubit.dart';

class AuthSignupBlocListner extends StatelessWidget {
  const AuthSignupBlocListner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, CubitStates>(
      listener: (context, state) {
        if (state is LoadedState) {
          Routes.verificationRoute.pushAndRemoveAllUntil();
        }
      },
      child: const SizedBox.shrink(),
    );
  }
}
