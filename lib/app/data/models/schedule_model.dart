import 'dart:convert';

import 'time_start_end.dart';

class Schedule {
  Schedule({
    this.timeAvalibility,
    this.datetime,
  });

  TimeStartEnd? timeAvalibility;
  String? datetime;

  factory Schedule.fromRawJson(String str) =>
      Schedule.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Schedule.fromJson(Map<String, dynamic> json) => Schedule(
        timeAvalibility: json["timeAvalibility"] == null
            ? null
            : TimeStartEnd.fromMap(json["timeAvalibility"]),
        datetime: json["datetime"],
      );

  Map<String, dynamic> toJson() => {
        "timeAvalibility":
            timeAvalibility == null ? null : timeAvalibility!.toJson(),
        "datetime": datetime,
      };
}
