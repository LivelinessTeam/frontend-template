import 'package:flutter/material.dart';

class TimeStartEnd {
  TimeOfDay? start;
  TimeOfDay? finish;

  TimeStartEnd({
    required this.start,
    required this.finish,
  });

  getStartText() {
    var jamStart = start!.hour;
    var startPagi = jamStart <= 12;

    if (!startPagi) {
      jamStart -= 12;
    }

    var startTime =
        '${jamStart.toString().padLeft(2, '0')}.${start!.minute.toString().padLeft(2, '0')}';

    // if (startPagi) {
    //   startTime += " AM";
    // } else {
    //   startTime += " PM";
    // }

    return startTime;
  }

  getStartTextampm() {
    var jamStart = start!.hour;
    var startPagi = jamStart <= 12;

    if (!startPagi) {
      jamStart -= 12;
    }

    var startTime =
        '${jamStart.toString().padLeft(2, '0')}.${start!.minute.toString().padLeft(2, '0')}';

    if (startPagi) {
      startTime += " AM";
    } else {
      startTime += " PM";
    }

    return startTime;
  }

  getFinishText() {
    var jamEnd = finish!.hour;
    var endPagi = jamEnd <= 12;
    if (!endPagi) {
      jamEnd -= 12;
    }
    var endTime =
        '${jamEnd.toString().padLeft(2, '0')}.${finish!.minute.toString().padLeft(2, '0')}';

    if (endPagi) {
      endTime += " AM";
    } else {
      endTime += " PM";
    }

    return endTime;
  }

  factory TimeStartEnd.fromMap(Map data) {
    return TimeStartEnd(
      start: data['start'] == null
          ? null
          : TimeOfDay(
              hour: data['start']['hour'] ?? 0,
              minute: data['start']['minute'] ?? 0),
      finish: data['finish'] == null
          ? null
          : TimeOfDay(
              hour: data['finish']['hour'] ?? 0,
              minute: data['finish']['minute'] ?? 0),
    );
  }

  Map<String, dynamic> toJson() => {
        "start": start == null
            ? null
            : {"hour": start!.hour, "minute": start!.minute},
        "finish": finish == null
            ? null
            : {"hour": finish!.hour, "minute": finish!.minute}
      };
}
