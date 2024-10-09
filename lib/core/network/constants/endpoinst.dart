abstract class EndPoints {
  static const String baseUrl = 'https://backend.seniorcode.co'; //base url
  static const String api = '/api/';
  static const String user = '${api}user/';
  static const String profile = '${api}profile/';
  static const String editProfile = '${api}profile/updateProfile';

///////////////////////////// authentication ////////////////////////////
  static const String register = '${api}signup';
  static const String login = '${api}login';
  static const String verify = '${api}verify';
  static const String verifyForgetPassword = '${api}verifyForgetPassword';
  static const String forgetPassword = '${api}forgetPassword';
  static const String resetPassword = '${api}resetPassword';
  static const String userLogout = '${api}logout';
}
