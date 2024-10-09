import 'otp_verification_user_model.dart';

class OtpVerificationResponseDataModel {
  String? token;
  OtpVerificatioUserResponseModel? user;

  OtpVerificationResponseDataModel({this.token, this.user});

  factory OtpVerificationResponseDataModel.fromJson(
          Map<String, dynamic> json) =>
      OtpVerificationResponseDataModel(
        token: json['token'] as String?,
        user: json['user'] == null
            ? null
            : OtpVerificatioUserResponseModel.fromJson(
                json['user'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'token': token,
        'user': user?.toJson(),
      };
}
