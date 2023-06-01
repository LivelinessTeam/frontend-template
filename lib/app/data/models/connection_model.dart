import 'dart:convert';

class Connection {
  Connection({
    this.userId,
    this.userType,
    this.timestamp,
  });

  String? userId;
  String? userType;
  String? timestamp;

  factory Connection.fromRawJson(String str) =>
      Connection.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Connection.fromJson(Map<String, dynamic> json) => Connection(
        userId: json["userId"],
        userType: json["userType"],
        timestamp: json["timestamp"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "userType": userType,
        "timestamp": timestamp,
      };
}
