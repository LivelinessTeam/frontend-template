import 'dart:convert';

class PopUp {
  String? photoUrl;
  String? title;
  String? subtitle;
  String? button;

  PopUp({
    required this.photoUrl,
    required this.title,
    required this.subtitle,
    required this.button,
  });

  factory PopUp.fromRawJson(String str) => PopUp.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PopUp.fromJson(Map<String, dynamic> json) => PopUp(
        photoUrl: json["photoUrl"],
        title: json["title"],
        subtitle: json["subtitle"],
        button: json["button"],
      );
  Map<String, dynamic> toJson() => {
        "photoUrl": photoUrl,
        "title": title,
        "subtitle": subtitle,
        "button": button,
      };
}
