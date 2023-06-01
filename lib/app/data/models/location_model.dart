import 'dart:convert';

class Location {
  Location({
    this.lastUpdated,
    this.latitude,
    this.longitude,
  });

  String? lastUpdated;
  double? latitude;
  double? longitude;

  factory Location.fromRawJson(String str) =>
      Location.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        lastUpdated: json["lastUpdated"],
        latitude: json["latitude"]?.toDouble(),
        longitude: json["longitude"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "lastUpdated": lastUpdated,
        "latitude": latitude,
        "longitude": longitude,
      };
}
