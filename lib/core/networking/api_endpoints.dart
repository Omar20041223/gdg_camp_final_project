
class ApiEndpoints {
  static const String baseUrl = "https://orientonline.info/api/";

  // auth
  static const String signUp = '${baseUrl}register/';

  static const String login = '${baseUrl}login/';


  static String validateEmail({required String otp}) {
    return 'validation/$otp';
  }

  static String forgetPassword({required String email}) {
    return 'forgetPassword/$email';
  }

  //--------------------------------------------------

  // home
  static String getAllActivePrograms({required int flag}) {
    return 'onlyCurrent/$flag';
  }

  //-----------------------------------------------------
}
