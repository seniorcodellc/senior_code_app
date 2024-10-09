import 'package:senior_code_app/exports.dart';

import 'login_response_data_model.dart';

class loginResponseModel extends ResponseModel {
  loginResponseModel({super.status, super.message, super.data});

  factory loginResponseModel.fromJson(Map<String, dynamic> json) {
    return loginResponseModel(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : LoginDataResponseModel.fromJson(
              json['data'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() => {
        'status': status,
        'message': message,
        'data': data?.toJson(),
      };
}
