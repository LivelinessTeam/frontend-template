import 'dart:convert';

import 'users_model.dart';
import 'coachclass_model.dart';

class AgendaModel {
  AgendaModel({
    this.id,
    this.createdtime,
    this.updatedtime,
    this.createdBy,
    this.requestedTo,
    this.participants,
    this.requestStatus,
    this.requestStatusTime,
    this.agendaType,
    this.title,
    this.description,
    this.location,
    this.datetime,
    this.timestart,
    this.timeend,
    this.cancelled,
    this.isOnClass,
    this.classId,
  });

  String? id;
  String? createdtime;
  String? updatedtime;
  String? createdBy;
  String? requestedTo;
  List<String>? participants;
  String? requestStatus;
  String? requestStatusTime;
  String? agendaType;
  String? title;
  String? description;
  String? location;
  String? datetime;
  String? timestart;
  String? timeend;
  bool? cancelled;
  bool? isOnClass;
  String? classId;
  UsersModel? agendaPartner;

  CoachClass? theClass;
  String? datetimeview;
  String? timestartview;
  String? timeendview;
  String? targetId;
  bool? inPast;
  bool forMe = false;

  factory AgendaModel.fromRawJson(String str) =>
      AgendaModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AgendaModel.fromJson(Map<String, dynamic> json) => AgendaModel(
        id: json["id"],
        createdtime: json["createdtime"],
        updatedtime: json["updatedtime"],
        createdBy: json["createdBy"],
        requestedTo: json["requestedTo"],
        participants: json["participants"] == null
            ? null
            : List<String>.from(json["participants"].map((x) => x)),
        requestStatus: json["requestStatus"],
        requestStatusTime: json["requestStatusTime"],
        agendaType: json["agendaType"],
        title: json["title"],
        description: json["description"],
        location: json["location"],
        datetime: json["datetime"],
        timestart: json["timestart"],
        timeend: json["timeend"],
        cancelled: json["cancelled"],
        isOnClass: json["isOnClass"],
        classId: json["classId"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "createdtime": createdtime,
        "createdBy": createdBy,
        "updatedtime": updatedtime,
        "requestedTo": requestedTo,
        "participants": participants == null
            ? null
            : List<dynamic>.from(participants!.map((x) => x)),
        "requestStatus": requestStatus,
        "requestStatusTime": requestStatusTime,
        "agendaType": agendaType,
        "title": title,
        "description": description,
        "location": location,
        "datetime": datetime,
        "timestart": timestart, // simpan dengan format waktu datetime iso juga
        "timeend": timeend, // sama
        "cancelled": cancelled,
        "isOnClass": isOnClass,
        "classId": classId,
      };
}
