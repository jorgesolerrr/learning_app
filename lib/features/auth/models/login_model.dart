// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class LoginModel {
  final String platform;
  final String username;
  final String password;

  const LoginModel({
    required this.platform,
    required this.username,
    required this.password,
  });

  LoginModel copyWith({
    String? platform,
    String? username,
    String? password,
  }) {
    return LoginModel(
      platform: platform ?? this.platform,
      username: username ?? this.username,
      password: password ?? this.password,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'platform': platform,
      'username': username,
      'password': password,
    };
  }

  factory LoginModel.fromMap(Map<String, dynamic> map) {
    return LoginModel(
      platform: map['platform'] as String,
      username: map['username'] as String,
      password: map['password'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory LoginModel.fromJson(String source) =>
      LoginModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'LoginModel(platform: $platform, username: $username, password: $password)';

  @override
  bool operator ==(covariant LoginModel other) {
    if (identical(this, other)) return true;

    return other.platform == platform &&
        other.username == username &&
        other.password == password;
  }

  @override
  int get hashCode => platform.hashCode ^ username.hashCode ^ password.hashCode;
}
