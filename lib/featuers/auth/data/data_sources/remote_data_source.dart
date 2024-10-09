import 'package:senior_code_app/core/app_helper.dart';
import 'package:senior_code_app/featuers/auth/data/models/verify_otp_models/otp_verification_request_model.dart/otp_verification_request_model.dart';
import 'package:senior_code_app/featuers/auth/data/models/sign_up_models/signup_request_model/signup_request_model.dart';

import '../../../../core/network/impl/dio_impl/dio-consumer.dart';
import '../../../../exports.dart';
import '../models/login_models/login_request_model/login_request_model.dart';
import '../models/login_models/login_response_model/login_response_model.dart';
import '../models/sign_up_models/signup_response_model/signup_response_model.dart';
import '../models/verify_otp_models/otp_verification_response_model/otp_verification_response_model.dart';

abstract class RemoteAuthDataSource {
  Future<ResponseModel> login(LoginRequestModel request);
  Future<ResponseModel> signup(SignupRequestBodyModel requestBody);
  Future<ResponseModel> verifyOtp(VerifyOtpRequestBodyModel requestBody);
}

//! Implementation using Dio Consumer
class RemoteAuthDataSourceImpl implements RemoteAuthDataSource {
  DioConsumer dioConsumer;

  RemoteAuthDataSourceImpl({required this.dioConsumer});

  @override
  Future<ResponseModel> login(LoginRequestModel request) async =>
      await remoteExecute(
        request: dioConsumer.postRequest(
          path: EndPoints.login,
          body: request.toJson(),
        ),
        fromJsonFunction: (data) => loginResponseModel.fromJson(data),
      );
  @override
  Future<ResponseModel> signup(SignupRequestBodyModel requestBody) async =>
      await remoteExecute(
        request: dioConsumer.postRequest(
          path: EndPoints.signup,
          body: requestBody.toJson(),
        ),
        fromJsonFunction: (data) => SignupResponseModel.fromJson(data),
      );

  @override
  Future<ResponseModel> verifyOtp(
          VerifyOtpRequestBodyModel requestBody) async =>
      await remoteExecute(
        request: dioConsumer.postRequest(
          path: EndPoints.verifyOtp,
          body: requestBody.toJson(),
        ),
        fromJsonFunction: (data) => OtpVerificationResponseModel.fromJson(data),
      );
}
