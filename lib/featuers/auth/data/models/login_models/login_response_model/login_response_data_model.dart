import 'login_user_model.dart';

class LoginDataResponseModel {
  String? token;
  LoginUserResponseModel? user;

  LoginDataResponseModel({this.token, this.user});

  factory LoginDataResponseModel.fromJson(Map<String, dynamic> json) =>
      LoginDataResponseModel(
        token: json['token'] as String?,
        user: json['user'] == null
            ? null
            : LoginUserResponseModel
                .fromJson(json['user'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'token': token,
        'user': user?.toJson(),
      };
}
