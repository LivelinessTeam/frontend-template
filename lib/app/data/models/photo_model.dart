import 'dart:convert';

class Photo {
  Photo({
    this.uploadedAt,
    this.imageUrl,
  });

  String? uploadedAt;
  String? imageUrl;

  factory Photo.fromRawJson(String str) => Photo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Photo.fromJson(Map<String, dynamic> json) => Photo(
        uploadedAt: json["uploadedAt"],
        imageUrl: json["imageUrl"],
      );

  Map<String, dynamic> toJson() => {
        "uploadedAt": uploadedAt,
        "imageUrl": imageUrl,
      };
}
