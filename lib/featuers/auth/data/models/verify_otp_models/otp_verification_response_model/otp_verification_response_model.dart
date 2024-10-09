import 'package:senior_code_app/core/network/model/response_model.dart';

import 'otp_verification_data_model.dart';

class OtpVerificationResponseModel extends ResponseModel {
  OtpVerificationResponseModel({super.status, super.message, super.data});

  factory OtpVerificationResponseModel.fromJson(Map<String, dynamic> json) {
    return OtpVerificationResponseModel(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : OtpVerificationResponseDataModel.fromJson(
              json['data'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() => {
        'status': status,
        'message': message,
        'data': data?.toJson(),
      };
}
