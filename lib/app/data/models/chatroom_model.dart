import 'dart:convert';

import "./users_model.dart";
import "./chatentry_model.dart";

class ChatroomModel {
  ChatroomModel({
    this.roomId,
    this.users,
    this.chats,
  });

  String? roomId;
  List<String>? users;
  List<Chat>? chats;
  UsersModel? chatWith;
  ChatEntry? chatEntry;

  setChatWith(UsersModel user) {
    chatWith = user;
  }

  setRoomId(String roomId) {
    this.roomId = roomId;
  }

  setChatEntry(ChatEntry chatEntry) {
    this.chatEntry = chatEntry;
  }

  factory ChatroomModel.fromRawJson(String str) =>
      ChatroomModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ChatroomModel.fromJson(Map<String, dynamic> json) => ChatroomModel(
        roomId: json["room_id"],
        users: json["users"] == null
            ? null
            : List<String>.from(json["users"].map((x) => x)),
        chats: json["chats"] == null
            ? null
            : List<Chat>.from(json["chats"].map((x) => Chat.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "room_id": roomId,
        "users":
            users == null ? null : List<dynamic>.from(users!.map((x) => x)),
        "chats": chats == null
            ? null
            : List<dynamic>.from(chats!.map((x) => x.toJson())),
      };
}

class Chat {
  Chat({
    this.sendby,
    this.message,
    this.time,
    this.isRead,
    this.type,
    this.audioPath,
  });

  String? sendby;
  String? message;
  String? time;
  bool? isRead;
  String? type;
  String? audioPath;

  factory Chat.fromRawJson(String str) => Chat.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Chat.fromJson(Map<String, dynamic> json) => Chat(
        sendby: json["sendby"],
        message: json["message"],
        time: json['time'],
        isRead: json["isRead"],
        type: json["type"],
        audioPath: json["audioPath"],
      );

  Map<String, dynamic> toJson() => {
        "sendby": sendby,
        "message": message,
        "time": time,
        "isRead": isRead,
        "type": type,
        "audioPath": audioPath,
      };
}
