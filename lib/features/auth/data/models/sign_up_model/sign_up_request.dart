
class SignUpRequest {
  final String phone;
  final String email;
  final String userName;
  final String password;
  final String confirmPassword;
  final String address;

  SignUpRequest({
    required this.confirmPassword,
    required this.phone,
    required this.email,
    required this.userName,
    required this.password,
    required this.address,
  });

  // Convert to raw JSON
  Map<String, dynamic> toJson() {
    return {
      'name': userName,
      'phone': phone,
      'password': password,
      'password_confirmation': confirmPassword,
      'email': email,
      'address': address
    };
  }
}