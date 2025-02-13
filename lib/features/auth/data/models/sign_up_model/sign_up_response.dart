class SignUpResponse {
  final User user;
  final String accessToken;
  final String tokenType;

  SignUpResponse({
    required this.user,
    required this.accessToken,
    required this.tokenType,
  });

  factory SignUpResponse.fromJson(Map<String, dynamic> json) {
    return SignUpResponse(
      user: User.fromJson(json['user']),
      accessToken: json['access_token'],
      tokenType: json['token_type'],
    );
  }

}

class User {
  final int id;
  final String name;
  final String email;
  final String phone;
  final String address;
  final String createdAt;
  final String updatedAt;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.address,
    required this.createdAt,
    required this.updatedAt,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
      address: json['address'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }

}
