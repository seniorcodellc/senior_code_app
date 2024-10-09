import '../../../../../../exports.dart';
import 'signup_response_data_model.dart';

class SignupResponseModel extends ResponseModel {
  SignupResponseModel({super.status, super.message, super.data});

  factory SignupResponseModel.fromJson(Map<String, dynamic> json) {
    return SignupResponseModel(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : SignupDataResponseModel.fromJson(
              json['data'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() => {
        'status': status,
        'message': message,
        'data': data?.toJson(),
      };
}
