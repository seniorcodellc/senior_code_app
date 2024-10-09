import 'user.dart';

class loginDataResponseModel {
  String? token;
  loginUserResponseModel? user;

  loginDataResponseModel({this.token, this.user});

  factory loginDataResponseModel.fromJson(Map<String, dynamic> json) =>
      loginDataResponseModel(
        token: json['token'] as String?,
        user: json['user'] == null
            ? null
            : loginUserResponseModel
                .fromJson(json['user'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'token': token,
        'user': user?.toJson(),
      };
}
