import 'users_model.dart';

import 'activity_model.dart';
import 'coachclass_model.dart';

class ActivitiyItem {
  ActivitiyItem(
      {this.datetime,
      this.time,
      this.title,
      this.location,
      this.showgoing,
      this.spotsleft,
      this.goingcount,
      this.type,
      this.coverphoto,
      this.user});

  DateTime? datetime;
  String? time;
  String? title;
  String? location;
  bool? showgoing = false;
  String? spotsleft = "";
  String? goingcount = "";
  String? type;
  CoachClass? coachClass;
  Activity? activity;
  String? coverphoto;
  UsersModel? user;
  bool privateclass = false;
  bool isAvailable = true;
}
