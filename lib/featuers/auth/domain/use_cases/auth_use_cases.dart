import 'package:senior_code_app/featuers/auth/data/models/verify_otp_models/otp_verification_request_model.dart/otp_verification_request_model.dart';
import 'package:senior_code_app/featuers/auth/data/models/sign_up_models/signup_request_model/signup_request_model.dart';

import '../../../../exports.dart';
import '../../data/models/login_models/login_request_model/login_request_model.dart';
import '../repositories/auth_repo.dart';

class AuthUseCase {
  final AuthRepository repository;

  AuthUseCase(this.repository);

  Future<Either<Failure, ResponseModel>> login(LoginRequestModel request) {
    return repository.login(request);
  }

  Future<Either<Failure, ResponseModel>> signup(
    SignupRequestBodyModel requestBody,
  ) {
    return repository.signup(requestBody);
  }

  Future<Either<Failure, ResponseModel>> verifyOtp(
      VerifyOtpRequestBodyModel requestBody) {
    return repository.verifyOtp(requestBody);
  }
}
