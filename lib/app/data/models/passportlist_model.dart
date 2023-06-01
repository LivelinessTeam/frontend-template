import 'dart:convert';

class PassportListModel {
  PassportListModel({
    this.location,
    this.current,
    this.enable,
  });

  String? location;
  String? current;
  bool? enable;

  factory PassportListModel.fromRawJson(String str) =>
      PassportListModel.fromJson(json.decode(str));
  String toRawJson() => json.encode(toJson());

  factory PassportListModel.fromJson(Map<String, dynamic> json) =>
      PassportListModel(
        location: json["location"],
        current: json["current"],
        enable: json["enable"],
      );

  Map<String, dynamic> toJson() => {
        "location": location,
        "current": current,
        "enable": enable,
      };
}
