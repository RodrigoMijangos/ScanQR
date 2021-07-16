class Login {
    Login({
        required this.username
    });

    String username;

    factory Login.fromJson(Map<String, dynamic> json) => Login(
        username: json["username"]
    );

    Map<String, dynamic> toJson() => {
        "username": username
    };
}