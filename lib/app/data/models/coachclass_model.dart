import 'dart:convert';

import 'schedule_model.dart';
import 'users_model.dart';
import 'classcomment_model.dart';
import 'location_model.dart';

class CoachClass {
  CoachClass(
      {this.creatorId,
      this.title,
      this.description,
      this.location,
      this.price,
      this.priceCurrency,
      this.benefit,
      this.classType,
      this.schedule,
      this.participantsLimit,
      this.participants,
      this.coverPhoto,
      this.category,
      this.classcomments,
      this.link,
      this.latlon});

  // loaded from firebase
  String? creatorId;
  String? title;
  String? description;
  String? location;
  String? price;
  String? priceCurrency;
  String? benefit;
  String? classType;
  String? coverPhoto;
  String? category;
  String? link;
  Schedule? schedule;
  int? participantsLimit;
  List<String>? participants;
  List<ClassComment>? classcomments = [];
  Location? latlon;

  // populated later
  String? id;
  List<UsersModel> participantsList = [];
  bool inThePast = false;
  bool isAvailable = true;


  // default methods
  factory CoachClass.fromRawJson(String str) =>
      CoachClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CoachClass.fromJson(Map<String, dynamic> json) => CoachClass(
        title: json["title"],
        creatorId: json["creatorId"],
        description: json["description"],
        location: json["location"],
        price: json["price"],
        priceCurrency: json["price_currency"],
        benefit: json["benefit"],
        classType: json["classType"],
        coverPhoto: json["coverPhoto"],
        category: json["category"],
        link: json["link"],
        schedule: json["schedule"] == null
            ? null
            : Schedule.fromJson(json["schedule"]),
        latlon:
            json["latlon"] == null ? null : Location.fromJson(json["latlon"]),
        participants: json["participants"] == null
            ? []
            : List<String>.from(json["participants"].map((x) => x)),
        participantsLimit: json["participantsLimit"],
        classcomments: json["classcomments"] == null
            ? []
            : List<ClassComment>.from(
                json["classcomments"].map((x) => ClassComment.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "creatorId": creatorId,
        "description": description,
        "location": location,
        "price": price,
        "price_currency": priceCurrency,
        "benefit": benefit,
        "participantsLimit": participantsLimit,
        "classType": classType,
        "link": link,
        "coverPhoto": coverPhoto,
        "category": category,
        "schedule": schedule == null ? null : schedule!.toJson(),
        "latlon": latlon == null ? null : latlon!.toJson(),
        "participants": participants == null
            ? null
            : List<dynamic>.from(participants!.map((x) => x)),
        "classcomments": classcomments == null
            ? []
            : List<dynamic>.from(classcomments!.map((x) => x.toJson())),
      };
}
