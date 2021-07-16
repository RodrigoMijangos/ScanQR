class Picture {
    Picture({
        required this.large,
        required this.medium,
        required this.thumbnail,
    });

    String large;
    String medium;
    String thumbnail;

    factory Picture.fromJson(Map<String, dynamic> json) => Picture(
        large: json["large"],
        medium: json["medium"],
        thumbnail: json["thumbnail"],
    );

    Map<String, dynamic> toJson() => {
        "large": large,
        "medium": medium,
        "thumbnail": thumbnail,
    };
}