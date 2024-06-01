// To parse this JSON data, do
//
//     final loginResponse = loginResponseFromJson(jsonString);

import 'dart:convert';

LoginResponse loginResponseFromJson(String str) =>
    LoginResponse.fromJson(json.decode(str));

String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());

class LoginResponse {
  String status;
  String message;
  Result result;

  LoginResponse({
    required this.status,
    required this.message,
    required this.result,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        status: json["status"],
        message: json["message"],
        result: Result.fromJson(json["result"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "result": result.toJson(),
      };
}

class Result {
  String token;
  User user;

  Result({
    required this.token,
    required this.user,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        token: json["token"],
        user: User.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "token": token,
        "user": user.toJson(),
      };
}

class User {
  int id;
  String uuid;
  String name;
  String email;
  String address;
  String phone;
  String gender;
  String fcmToken;
  String avatar;
  List<Role> roles;
  dynamic createdBy;
  dynamic updatedBy;
  String createdAt;
  String updatedAt;
  String createdAtAgo;
  String updatedAtAgo;

  User({
    required this.id,
    required this.uuid,
    required this.name,
    required this.email,
    required this.address,
    required this.phone,
    required this.gender,
    required this.fcmToken,
    required this.avatar,
    required this.roles,
    required this.createdBy,
    required this.updatedBy,
    required this.createdAt,
    required this.updatedAt,
    required this.createdAtAgo,
    required this.updatedAtAgo,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        uuid: json["uuid"],
        name: json["name"],
        email: json["email"],
        address: json["address"],
        phone: json["phone"],
        gender: json["gender"],
        fcmToken: json["fcm_token"],
        avatar: json["avatar"],
        roles: List<Role>.from(json["roles"].map((x) => Role.fromJson(x))),
        createdBy: json["created_by"],
        updatedBy: json["updated_by"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        createdAtAgo: json["created_at_ago"],
        updatedAtAgo: json["updated_at_ago"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "uuid": uuid,
        "name": name,
        "email": email,
        "address": address,
        "phone": phone,
        "gender": gender,
        "fcm_token": fcmToken,
        "avatar": avatar,
        "roles": List<dynamic>.from(roles.map((x) => x.toJson())),
        "created_by": createdBy,
        "updated_by": updatedBy,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "created_at_ago": createdAtAgo,
        "updated_at_ago": updatedAtAgo,
      };
}

class Role {
  int id;
  String name;

  Role({
    required this.id,
    required this.name,
  });

  factory Role.fromJson(Map<String, dynamic> json) => Role(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
