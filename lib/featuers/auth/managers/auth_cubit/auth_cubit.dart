import 'package:senior_code_app/core/app_helper.dart';
import 'package:senior_code_app/core/extensions.dart';
import 'package:senior_code_app/core/list_states.dart';
import '../../../../exports.dart';
import '../../data/models/login_request_model/login_request_model.dart';
import '../../data/models/login_response_model/data.dart';
import '../../data/models/login_response_model/user.dart';
import '../../domain/use_cases/auth_use_cases.dart';
// part 'auth_states.dart';

class AuthCubit extends Cubit<CubitStates> {
  final AuthUseCase loginUseCase;
  loginDataResponseModel? loginResponseDataModel;
  loginUserResponseModel? user;

  AuthCubit(this.loginUseCase) : super(LoadingState());
  TextEditingController emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  TextEditingController passwordController = TextEditingController();

  emitLoginStates(LoginRequestModel request) async {
    await executeWithDialog(
      onError: (message) {
        emit(FailedState(message: message));
      },
      either: loginUseCase.login(request),
      startingMessage: 'Logging in...',
      onSuccess: (data) async {
        emit(
          LoadedState(data: data),
        );
      },
      beforeSuccess: (data) async {
        loginResponseDataModel = data;
        if (loginResponseDataModel.isNotNull) {
          user = loginResponseDataModel!.user;
        }
      },
    );
  }
}
