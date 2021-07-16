import 'Result.dart';

class User {
  User({
    required this.results
  });

  List<Result> results;

  factory User.fromJson(Map<String, dynamic> json) => User(
        results: List<Result>.from(json["results"].map((x) => Result.fromJson(x)))
    );
     Map<String, dynamic> toJson() => {
        "results": List<dynamic>.from(results.map((x) => x.toJson()))
    };
}