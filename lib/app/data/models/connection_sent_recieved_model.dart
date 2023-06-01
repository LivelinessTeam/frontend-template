import 'dart:convert';

import 'users_model.dart';

class ConnectionSentOrReceivedModel {
  ConnectionSentOrReceivedModel(
      {this.userId,
      this.userType,
      this.dateAndTime,
      this.status,
      this.name,
      this.image});

  String? userId;
  String? userType;
  String? dateAndTime;
  String? status;
  String? name;
  String? image;

  UsersModel? theuser;
  bool userloaded = false;

  factory ConnectionSentOrReceivedModel.fromRawJson(String str) =>
      ConnectionSentOrReceivedModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ConnectionSentOrReceivedModel.fromJson(Map<String, dynamic> json) =>
      ConnectionSentOrReceivedModel(
        userId: json["userId"],
        userType: json["userType"],
        dateAndTime: json["dateAndTime"],
        status: json["status"],
        name: json["name"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "userType": userType,
        "dateAndTime": dateAndTime,
        "status": status,
        "name": name,
        "image": image
      };
}
