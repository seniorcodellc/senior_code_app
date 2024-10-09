import 'package:senior_code_app/core/app_helper.dart';
import 'package:senior_code_app/featuers/auth/data/models/verify_otp_models/otp_verification_request_model.dart/otp_verification_request_model.dart';
import 'package:senior_code_app/featuers/auth/data/models/sign_up_models/signup_request_model/signup_request_model.dart';

import '../../../../exports.dart';
import '../../domain/repositories/auth_repo.dart';
import '../data_sources/remote_data_source.dart';
import '../models/login_models/login_request_model/login_request_model.dart';

class AuthRepositoryImpl implements AuthRepository {
  final RemoteAuthDataSource remoteAuthDataSource;

  AuthRepositoryImpl({required this.remoteAuthDataSource});

  @override
  Future<Either<Failure, ResponseModel>> login(LoginRequestModel request) =>
      execute(() async => remoteAuthDataSource.login(request));

  @override
  Future<Either<Failure, ResponseModel>> signup(
          SignupRequestBodyModel requestBody) =>
      execute(() async => remoteAuthDataSource.signup(requestBody));

  @override
  Future<Either<Failure, ResponseModel>> verifyOtp(
          VerifyOtpRequestBodyModel requestBody) =>
      execute(() async => remoteAuthDataSource.verifyOtp(requestBody));
}
