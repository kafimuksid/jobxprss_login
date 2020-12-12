import 'dart:convert';

PublisherModel publisherFromJson(String str) =>
    PublisherModel.fromJson(json.decode(str));
String publisherModelToJson(PublisherModel data) => json.encode(data.toJson());

class PublisherModel {
  PublisherModel({
    this.publishers,
  });
  List<Publisher> publishers;
  factory PublisherModel.fromJson(Map<String, dynamic> json) => PublisherModel(
        publishers: List<Publisher>.from(
            json["publishers"].map((x) => Publisher.fromJson(x))),
      );
  Map<String, dynamic> toJson() => {
        "publishers": List<dynamic>.from(publishers.map((x) => x.toJson())),
      };
}

class Publisher {
  Publisher({
    this.name,
    this.email,
    this.publishedpost,
    this.avatarUrl,
  });

  String name;
  String email;
  String publishedpost;
  String avatarUrl;

  factory Publisher.fromJson(Map<String, dynamic> json) => Publisher(
      name: json["name"],
      email: json["email"],
      publishedpost: json["publishedpost"],
      avatarUrl: json["avatarUrl"]);
  Map<String, dynamic> toJson() => {
        "name": name,
        "email": email,
        "publishedpost": publishedpost,
        "avatarUrl": avatarUrl
      };
}
