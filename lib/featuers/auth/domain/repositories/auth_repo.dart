import '../../../../exports.dart';
import '../../data/models/login_models/login_request_model/login_request_model.dart';
import '../../data/models/verify_otp_models/otp_verification_request_model.dart/otp_verification_request_model.dart';
import '../../data/models/sign_up_models/signup_request_model/signup_request_model.dart';

abstract class AuthRepository {
  Future<Either<Failure, ResponseModel>> login(LoginRequestModel request);
  Future<Either<Failure, ResponseModel>> signup(
    SignupRequestBodyModel requestBody,
  );
  Future<Either<Failure, ResponseModel>> verifyOtp(
    VerifyOtpRequestBodyModel request,
  );
}
