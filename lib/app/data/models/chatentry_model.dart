import 'dart:convert';

class ChatEntry {
  ChatEntry({
    this.chatroom,
    this.partnerId,
    this.unreadCount,
    this.unread,
    this.lastMessage,
    this.lastMessageTime,
  });

  String? chatroom;
  String? partnerId;
  int? unreadCount;
  bool? unread;
  String? lastMessage;
  String? lastMessageTime;

  factory ChatEntry.fromRawJson(String str) =>
      ChatEntry.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ChatEntry.fromJson(Map<String, dynamic> json) => ChatEntry(
        chatroom: json["chatroom"],
        partnerId: json["partnerId"],
        unreadCount: json["unreadCount"],
        unread: json["unread"],
        lastMessage: json["lastMessage"],
        lastMessageTime: json['lastMessageTime'].toString()
       // DateTime.parse(json['lastMessageTime'].toDate().toString()),
      );

  Map<String, dynamic> toJson() => {
        "chatroom": chatroom,
        "partnerId": partnerId,
        "unreadCount": unreadCount,
        "unread": unread,
        "lastMessage": lastMessage,
        "lastMessageTime": lastMessageTime,
      };
}
