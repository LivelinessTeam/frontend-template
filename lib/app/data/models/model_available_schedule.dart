import './schedule_model.dart';

class AvailableSchedule {
  final String type;
  final String timeStart;
  final String timeEnd;
  final String amPm;
  bool selected = false;
  Schedule? schedule;

  AvailableSchedule({
    this.type = '',
    this.timeStart = '',
    this.timeEnd = '',
    this.amPm = '',
    this.schedule,
  });

  factory AvailableSchedule.fromMap(Map data) {
    return AvailableSchedule(
      type: data['type'],
      timeStart: data['timeStart'],
      timeEnd: data['timeEnd'],
      amPm: data['amPm'],
    );
  }
}
