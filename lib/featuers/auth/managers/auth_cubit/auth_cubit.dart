import 'package:senior_code_app/core/app_helper.dart';
import 'package:senior_code_app/core/extensions.dart';
import 'package:senior_code_app/core/list_states.dart';
import 'package:senior_code_app/featuers/auth/data/models/verify_otp_models/otp_verification_request_model.dart/otp_verification_request_model.dart';
import 'package:senior_code_app/featuers/auth/data/models/sign_up_models/signup_request_model/signup_request_model.dart';
import '../../../../exports.dart';
import '../../data/models/login_models/login_request_model/login_request_model.dart';
import '../../data/models/login_models/login_response_model/login_response_data_model.dart';
import '../../data/models/login_models/login_response_model/login_user_model.dart';
import '../../data/models/sign_up_models/signup_response_model/signup_response_data_model.dart';
import '../../data/models/verify_otp_models/otp_verification_response_model/otp_verification_data_model.dart';
import '../../data/models/verify_otp_models/otp_verification_response_model/otp_verification_response_model.dart';
import '../../data/models/verify_otp_models/otp_verification_response_model/otp_verification_user_model.dart';
import '../../domain/use_cases/auth_use_cases.dart';

class AuthCubit extends Cubit<CubitStates> {
  final AuthUseCase useCase;
  LoginDataResponseModel? loginResponseDataModel;
  LoginUserResponseModel? loginUserResonseModel;
  SignupDataResponseModel? signupDataResponseModel;
  OtpVerificationResponseModel? verifyOtpResponseModel;

  AuthCubit(this.useCase)
      : super(LoadingState());
  TextEditingController emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  TextEditingController passwordController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController birthDayController = TextEditingController();
  String? countryId;
  String? phone;
  TextEditingController phoneController = TextEditingController();
  final formKeySignup = GlobalKey<FormState>();
  OtpVerificatioUserResponseModel? otpVerificatioUserResponseModel;
  OtpVerificationResponseDataModel? otpVerificationResponseDataModel;

//! Login Flow
  emitLoginStates(LoginRequestModel request) async {
    await executeWithDialog(
      onError: (message) {
        emit(FailedState(message: message));
      },
      either: useCase.login(request),
      startingMessage: 'Logging in...',
      onSuccess: (data) async {
        emit(
          LoadedState(data: data),
        );
      },
      beforeSuccess: (data) async {
        loginResponseDataModel = data;
        if (loginResponseDataModel.isNotNull) {
          loginUserResonseModel = loginResponseDataModel!.user;
        }
      },
    );
  }

  //! Signup Flow
emitSignupStates(SignupRequestBodyModel request) async {
    await executeWithDialog(
      onError: (message) {
        emit(FailedState(message: message));
      },
      either: useCase.signup(request),
      startingMessage: 'Signing up...',
      onSuccess: (data) async {
        if (data.isNotNull) {
          emit(LoadedState(data: data));
        }
      },
      beforeSuccess: (data) async {
        // Ensure the data being returned is of type SignupResponseModel
        if (data is SignupDataResponseModel) {
          signupDataResponseModel = data;
        } else {
          throw TypeError(); // Handle type mismatch case
        }
      },
    );
  }

  //! Verify OTP Flow
  emitVerifyOtpStates(VerifyOtpRequestBodyModel request) async {
    await executeWithDialog(
      onError: (message) {
        emit(FailedState(message: message));
      },
      either: useCase.verifyOtp(request),
      startingMessage: 'Verifying OTP...',
      onSuccess: (data) async {
        emit(
          LoadedState(data: data),
        );
      },
      beforeSuccess: (data) async {
        verifyOtpResponseModel = data;
        if (verifyOtpResponseModel.isNotNull) {
          otpVerificatioUserResponseModel =
              otpVerificationResponseDataModel!.user;
        }
      },
    );
  }
}
