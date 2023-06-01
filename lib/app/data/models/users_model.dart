import 'dart:convert';

import 'package:get/get.dart';

import './subscription_model.dart';
import './location_model.dart';
import './coachclass_model.dart';
import './photo_model.dart';
import './chatentry_model.dart';
import './connection_model.dart';
import 'connection_sent_recieved_model.dart';

class UsersModel {
  UsersModel(
      {this.uid,
      this.userType,
      this.email,
      this.avatarUrl,
      this.name,
      this.age,
      this.bio,
      this.instagram,
      this.nationality,
      this.nationalityCode,
      this.address,
      this.country,
      this.countryCode,
      this.city,
      this.cityCode,
      this.gender,
      this.birthDate,
      this.coverPhoto,
      this.isProfileVerified,
      this.isEmailVerified,
      this.hidden,
      this.notificationDisabled,
      this.creationTime,
      this.lastSignInTime,
      this.location,
      this.mainPhoto,
      this.userPhotos,
      this.userInterest,
      this.chats,
      this.connections,
      this.liking,
      this.likedby,
      this.subscription,
      this.provider,
      this.link,
      this.myRequests,
      this.requestsReceived,
      this.blockedUsers,
      this.fcmToken});

  String? uid;
  String? provider;
  String? userType;
  String? email;
  String? avatarUrl;
  String? name;
  String? age;
  String? bio;
  String? instagram;
  String? nationality;
  String? nationalityCode;
  String? address;
  String? country;
  String? countryCode;
  String? city;
  String? cityCode;
  String? gender;
  String? birthDate;
  bool? isProfileVerified;
  bool? isEmailVerified;
  bool? hidden;
  bool? notificationDisabled;
  String? creationTime;
  String? lastSignInTime;
  Location? location;
  Photo? mainPhoto;
  Photo? coverPhoto;
  List<Photo>? userPhotos;
  List<String>? userInterest;
  List<CoachClass> coachClass = [];
  List<ChatEntry>? chats;
  List<Connection>? connections;
  List<ConnectionSentOrReceivedModel>? requestsReceived;
  List<ConnectionSentOrReceivedModel>? myRequests;
  List<Connection>? liking;
  List<Connection>? likedby;
  Subscription? subscription;
  bool? likedByMe = false;
  bool? likingMe = false;
  bool? connectedWithMe = false;
  bool? haveChatWithMe = false;
  double? distanceWithMe = 0.0;
  String? link;
  String? fcmToken;

  int? activitiesCount = 0;
  List<String>? blockedUsers = [];
  bool? isblocked = false;



  String getFirstPhoto() {
    try {
      if (userPhotos != null &&
          userPhotos!.isNotEmpty &&
          userPhotos![0].imageUrl != null &&
          userPhotos![0].imageUrl != "") {
        printInfo(info: "get first photo");
        return userPhotos![0].imageUrl!;
      } else {
        printInfo(info: "get no first photo");
        return "";
      }
    } catch (e) {
      printInfo(info: "get no first photo, errored : ${e.toString()}");

      return "";
    }
  }

  String getAvatarPhoto() {
    try {
      if (mainPhoto != null &&
          mainPhoto!.imageUrl != null &&
          mainPhoto!.imageUrl != "") {
        printInfo(info: "get avatar from main photo");

        return mainPhoto!.imageUrl!;
      } else if (userPhotos != null &&
          userPhotos!.isNotEmpty &&
          userPhotos![0].imageUrl != null &&
          userPhotos![0].imageUrl != "") {
        printInfo(info: "get avatar from photos");
        return userPhotos![0].imageUrl!;
      } else {
        printInfo(info: "get no avatar");
        return "";
      }
    } catch (e) {
      printInfo(info: "get no avatar, errored : ${e.toString()}");

      return "";
    }
  }

  String getCoverPhoto() {
    try {
      Get.log("cover photo  $coverPhoto");
      if (coverPhoto != null &&
          coverPhoto!.imageUrl != null &&
          coverPhoto!.imageUrl != "") {
        printInfo(info: "get avatar from main photo");
        Get.log("cover photo  ${coverPhoto!.imageUrl}");
        return coverPhoto!.imageUrl!;
      } else if (userPhotos != null &&
          userPhotos!.isNotEmpty &&
          userPhotos![0].imageUrl != null &&
          userPhotos![0].imageUrl != "") {
        printInfo(info: "get avatar from photos");
        return userPhotos![0].imageUrl!;
      } else {
        printInfo(info: "get no avatar");
        return "";
      }
    } catch (e) {
      printInfo(info: "get no avatar, errored : ${e.toString()}");

      return "";
    }
  }


  getInfo() {
    var username = name ?? "";

    var distance = distanceWithMe != null
        ? ("${distanceWithMe!.toStringAsFixed(0)} Km Away")
        : "-";
    var listInterest = [];
    if (userInterest != null) {
      listInterest = userInterest as List<String>;
    }
    if (listInterest.length > 2) {
      int more = listInterest.length - 2;
      listInterest = listInterest.sublist(0, 2);
      listInterest.add("+$more");
    }

    List<Photo> photos = userPhotos ?? [];
    String avatar = getAvatarPhoto();
    String firstPhoto = getFirstPhoto();

    var contacts = connections != null ? connections!.length.toString() : "0";
    String activities = activitiesCount.toString();

    return {
      "name": username,
      "address": address ?? "",
      "distance": distance,
      "about": bio ?? "",
      "nationalityCode": nationalityCode ?? "",
      "nationality": nationality ?? "",
      "instagram": instagram ?? "",
      "listInterest": listInterest,
      "age": age ?? "",
      "userType": userType ?? "athlete",
      "likedByMe": likedByMe ?? false,
      "connectedWithME": connectedWithMe ?? false,
      "photos": photos,
      "avatar": avatar,
      "firstPhoto": firstPhoto,
      "contacts": contacts,
      "activities": activities
    };
  }

  factory UsersModel.fromRawJson(String str) =>
      UsersModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UsersModel.fromJson(Map<String, dynamic> json) => UsersModel(
      uid: json["uid"],
      provider: json["provider"],
      userType: json["userType"],
      email: json["email"],
      avatarUrl: json["avatarUrl"],
      name: json["name"],
      age: json["age"],
      bio: json["bio"],
      instagram: json["instagram"],
      nationality: json["nationality"],
      nationalityCode: json["nationalityCode"],
      address: json["address"],
      country: json["country"],
      countryCode: json["countryCode"],
      city: json["city"],
      cityCode: json["cityCode"],
      gender: json["gender"],
      birthDate: json["birthDate"],
      isProfileVerified: json["isProfileVerified"],
      isEmailVerified: json["isEmailVerified"],
      hidden: json["hidden"],
      notificationDisabled: json["notificationDisabled"],
      creationTime: json["creationTime"],
      lastSignInTime: json["lastSignInTime"],
      fcmToken: json["fcmToken"],
      location:
          json["location"] == null ? null : Location.fromJson(json["location"]),
      mainPhoto:
          json["mainPhoto"] == null ? null : Photo.fromJson(json["mainPhoto"]),
      userPhotos: json["userPhotos"] == null
          ? null
          : List<Photo>.from(json["userPhotos"].map((x) => Photo.fromJson(x))),
      userInterest: json["userInterest"] == null
          ? null
          : List<String>.from(json["userInterest"].map((x) => x)),
      chats: json["chats"] == null
          ? null
          : List<ChatEntry>.from(
              json["chats"].map((x) => ChatEntry.fromJson(x))),
      connections: json["connections"] == null
          ? null
          : List<Connection>.from(
              json["connections"].map((x) => Connection.fromJson(x))),
      myRequests: json["myRequests"] == null
          ? []
          : List<ConnectionSentOrReceivedModel>.from(json["myRequests"]
              .map((x) => ConnectionSentOrReceivedModel.fromJson(x))),
      requestsReceived: json["requestsReceived"] == null
          ? []
          : List<ConnectionSentOrReceivedModel>.from(json["requestsReceived"]
              .map((x) => ConnectionSentOrReceivedModel.fromJson(x))),
      liking: json["liking"] == null
          ? null
          : List<Connection>.from(
              json["liking"].map((x) => Connection.fromJson(x))),
      likedby: json["likedby"] == null
          ? null
          : List<Connection>.from(
              json["likedby"].map((x) => Connection.fromJson(x))),
      subscription: json["subscription"] == null ? null : Subscription.fromJson(json["subscription"]),
      link: json["link"],
      blockedUsers: json["blockedUsers"] == null ? [] : List<String>.from(json["blockedUsers"].map((x) => x)),
      coverPhoto: json["coverPhoto"] == null ? null : Photo.fromJson(json["coverPhoto"]));

  Map<String, dynamic> toJson() => {
        "uid": uid,
        "provider": provider,
        "userType": userType,
        "email": email,
        "avatarUrl": avatarUrl,
        "name": name,
        "age": age,
        "bio": bio,
        "instagram": instagram,
        "nationality": nationality,
        "address": address,
        "country": country,
        "countryCode": countryCode,
        "gender": gender,
        "birthDate": birthDate,
        "isProfileVerified": isProfileVerified,
        "isEmailVerified": isEmailVerified,
        "hidden": hidden,
        "notificationDisabled": notificationDisabled,
        "creationTime": creationTime,
        "lastSignInTime": lastSignInTime,
        "location": location == null ? null : location!.toJson(),
        "mainPhoto": mainPhoto == null ? null : mainPhoto!.toJson(),
        "userPhotos": userPhotos == null
            ? null
            : List<dynamic>.from(userPhotos!.map((x) => x.toJson())),
        "userInterest": userInterest == null
            ? null
            : List<dynamic>.from(userInterest!.map((x) => x)),
        "chats": chats == null
            ? null
            : List<dynamic>.from(chats!.map((x) => x.toJson())),
        "connections": connections == null
            ? null
            : List<dynamic>.from(connections!.map((x) => x.toJson())),
        "myRequests": myRequests == null
            ? null
            : List<dynamic>.from(connections!.map((x) => x.toJson())),
        "requestsReceived": requestsReceived == null
            ? null
            : List<dynamic>.from(connections!.map((x) => x.toJson())),
        "liking": liking == null
            ? null
            : List<dynamic>.from(liking!.map((x) => x.toJson())),
        "likedby": likedby == null
            ? null
            : List<dynamic>.from(likedby!.map((x) => x.toJson())),
        "subscription": subscription == null ? null : subscription!.toJson(),
        "link": link,
        "fcmfcmToken": fcmToken,
        "blockedUsers": blockedUsers == null
            ? []
            : List<dynamic>.from(blockedUsers!.map((x) => x)),
        "coverPhoto": Photo(
                imageUrl:
                    "https://images.unsplash.com/photo-1557683316-973673baf926?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1658&q=80",
                uploadedAt: DateTime.now().toIso8601String())
            .toJson()
      };
}
