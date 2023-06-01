import 'dart:convert';

import 'users_model.dart';

class ClassComment {
  ClassComment({
    this.createdAt,
    this.commenterId,
    this.comment,
    this.deleted,
  });

  String? uid = "";
  String? createdAt;
  String? commenterId;
  String? comment = "";
  bool? deleted = false;

  UsersModel? theuser;
  bool? userloaded = false;

  factory ClassComment.fromRawJson(String str) =>
      ClassComment.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ClassComment.fromJson(Map<String, dynamic> json) => ClassComment(
        createdAt: json["createdAt"],
        commenterId: json["commenterId"],
        comment: json["comment"],
        deleted: json["deleted"],
      );

  Map<String, dynamic> toJson() => {
        "createdAt": createdAt,
        "commenterId": commenterId,
        "comment": comment,
        "deleted": deleted,
      };
}
