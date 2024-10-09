class loginUserResponseModel {
  int? id;
  String? img;
  String? name;
  String? email;
  dynamic emailVerifiedAt;
  String? birthDay;
  dynamic countryId;
  String? phone;
  String? lang;
  String? otp;
  int? verifyPhone;
  String? otpExpiresAt;

  loginUserResponseModel({
    this.id,
    this.img,
    this.name,
    this.email,
    this.emailVerifiedAt,
    this.birthDay,
    this.countryId,
    this.phone,
    this.lang,
    this.otp,
    this.verifyPhone,
    this.otpExpiresAt,
  });

  factory loginUserResponseModel.fromJson(Map<String, dynamic> json) =>
      loginUserResponseModel(
        id: json['id'] as int?,
        img: json['img'] as String?,
        name: json['name'] as String?,
        email: json['email'] as String?,
        emailVerifiedAt: json['email_verified_at'] as dynamic,
        birthDay: json['birthDay'] as String?,
        countryId: json['countryID'] as dynamic,
        phone: json['phone'] as String?,
        lang: json['lang'] as String?,
        otp: json['otp'] as String?,
        verifyPhone: json['verify_phone'] as int?,
        otpExpiresAt: json['otp_expires_at'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'img': img,
        'name': name,
        'email': email,
        'email_verified_at': emailVerifiedAt,
        'birthDay': birthDay,
        'countryID': countryId,
        'phone': phone,
        'lang': lang,
        'otp': otp,
        'verify_phone': verifyPhone,
        'otp_expires_at': otpExpiresAt,
      };
}
