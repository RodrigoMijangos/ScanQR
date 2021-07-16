import 'Login.dart';
import 'Name.dart';
import 'Picture.dart';

class Result {
    Result({
        required this.gender,
        required this.name,
        required this.email,
        required this.login,
        required this.phone,
        required this.picture
    });

    String gender;
    Name name;
    String email;
    Login login;
    String phone;
    Picture picture;

    factory Result.fromJson(Map<String, dynamic> json) => Result(
        gender: json["gender"],
        name: Name.fromJson(json["name"]),
        email: json["email"],
        login: Login.fromJson(json["login"]),
        phone: json["phone"],
        picture: Picture.fromJson(json["picture"])
    );

    Map<String, dynamic> toJson() => {
        "gender": gender,
        "name": name.toJson(),
        "email": email,
        "login": login.toJson(),
        "phone": phone,
        "picture": picture.toJson(),
    };
}