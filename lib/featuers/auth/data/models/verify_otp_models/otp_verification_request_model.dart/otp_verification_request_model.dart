class VerifyOtpRequestBodyModel {
  final String countryId;
  final String phone;
  final String otp;

  VerifyOtpRequestBodyModel({
    required this.countryId,
    required this.phone,
    required this.otp,
  });

  Map<String, dynamic> toJson() {
    return {
      'countryId': countryId,
      'phone': phone,
      'otp': otp,
    };
  }
}

