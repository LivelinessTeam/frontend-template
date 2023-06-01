import 'dart:convert';
import 'users_model.dart';
import 'schedule_model.dart';
import 'location_model.dart';
import 'classcomment_model.dart';

class Participant {
  String? userUid;
  String? avatarUid;
  bool? creator = false;

  UsersModel? theuser;
  bool? userloaded = false;

  Participant({
    required this.userUid,
    required this.avatarUid,
    required this.creator,
  });

  factory Participant.fromRawJson(String str) =>
      Participant.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Participant.fromJson(Map<String, dynamic> json) => Participant(
        userUid: json["userUid"],
        avatarUid: json["avatarUid"],
        creator: json["creator"] ?? false,
      );
  Map<String, dynamic> toJson() => {
        "userUid": userUid,
        "avatarUid": avatarUid,
        "creator": creator ?? false,
      };
}

class Activity {
  String? uid;
  Schedule? schedule;
  String? sport;
  String? location;
  String? description;
  String? type = "public";
  int? participantLimit = 1;
  List? participants;
  List<Participant>? participantList;
  Map? creatorLocation;
  String? creatorId;
  UsersModel? creator;
  String timetext = "";
  bool inPast = false;
  String startTime = "";
  bool? canceled = false;
  bool? shownotification = false;
  List<ClassComment>? classcomments = [];

  String? link = "";
  Location? latlon;

  Activity(
      {this.schedule,
      this.sport,
      this.location,
      this.description,
      this.type,
      this.participantLimit,
      this.participants,
      this.creatorId,
      this.creatorLocation,
      this.participantList,
      this.canceled,
      this.shownotification,
      this.classcomments,
      this.link,
      this.latlon});

  factory Activity.fromRawJson(String str) =>
      Activity.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Activity.fromJson(Map<String, dynamic> json) => Activity(
        schedule: json["schedule"] != null
            ? Schedule.fromJson(json["schedule"])
            : null,
        sport: json["sport"],
        location: json["location"],
        description: json["description"],
        link: json["link"],
        type: json["type"] ?? "Public",
        participantLimit: json["participantLimit"] ?? 1,
        creatorId: json["creatorId"],
        participants: json["participants"] ?? [],
        creatorLocation: json["creatorLocation"],
        canceled: json["canceled"] ?? false,
        latlon:
            json["latlon"] == null ? null : Location.fromJson(json["latlon"]),
        shownotification: json["shownotification"] ?? false,
        participantList: json["participantList"] == null
            ? []
            : List<Participant>.from(
                json["participantList"].map((x) => Participant.fromJson(x))),
        classcomments: json["classcomments"] == null
            ? []
            : List<ClassComment>.from(
                json["classcomments"].map((x) => ClassComment.fromJson(x))),
      );
  Map<String, dynamic> toJson() => {
        "schedule": schedule?.toJson(),
        "sport": sport,
        "location": location,
        "description": description,
        "link": link,
        "creatorId": creatorId,
        "type": type ?? "public",
        "participantLimit": participantLimit ?? 1,
        "participants": participants,
        "creatorLocation": creatorLocation,
        "canceled": canceled ?? false,
        "shownotification": shownotification ?? false,
        "latlon": latlon == null ? null : latlon!.toJson(),
        "participantList": participantList == null
            ? []
            : List<dynamic>.from(participantList!.map((x) => x.toJson())),
        "classcomments": classcomments == null
            ? []
            : List<dynamic>.from(classcomments!.map((x) => x.toJson())),
      };
}
