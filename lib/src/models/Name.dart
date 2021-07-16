class Name {
    Name({
        required this.title,
        required this.first,
        required this.last,
    });

    String title;
    String first;
    String last;

    factory Name.fromJson(Map<String, dynamic> json) => Name(
        title: json["title"],
        first: json["first"],
        last: json["last"],
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "first": first,
        "last": last,
    };
}