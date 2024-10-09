class SignupDataResponseModel {
  String? otp;

  SignupDataResponseModel({this.otp});

  factory SignupDataResponseModel.fromJson(Map<String, dynamic> json) =>
      SignupDataResponseModel(
        otp: json['otp'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'otp': otp,
      };
}
