class LoginRequest {
  final String email;
  final String password;


  LoginRequest({
    required this.email,
    required this.password,
  });

  // Convert to raw JSON
  Map<String, dynamic> toJson() {
    return {
      'password': password,
      'email': email,
    };
  }
}