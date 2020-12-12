import 'dart:convert';

LoginModel publisherFromJson(String str) =>
    LoginModel.fromJson(json.decode(str));
String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  LoginModel({
    this.admins,
  });
  List<User> admins;
  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        admins: List<User>.from(json["admins"].map((x) => User.fromJson(x))),
      );
  Map<String, dynamic> toJson() => {
        "admins": List<dynamic>.from(admins.map((x) => x.toJson())),
      };
}

class User {
  User({
    this.name,
    this.email,
    this.password,
  });
  String name;
  String email;
  String password;
  factory User.fromJson(Map<String, dynamic> json) =>
      User(name: json["name"], email: json["email"], password: json["password"]
          //image: json["image"],
          );
  Map<String, dynamic> toJson() => {
        "name": name,
        "email": email,
        "password": password
        //"image": image,
      };
}
