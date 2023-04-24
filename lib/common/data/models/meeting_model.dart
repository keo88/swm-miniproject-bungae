import 'package:swm_miniproject_flutter/common/data/enums/group_type_enum.dart';

class MeetingData {
  String title;
  GroupType meetingType;
  int maxCount;
  int currentCount;
  DateTime meetingTime;
  DateTime createdTime;

  MeetingData(
      {required this.title,
        required this.meetingType,
        required this.maxCount,
        required this.currentCount,
        required this.meetingTime,
        required this.createdTime,
        });

  factory MeetingData.fromJson(Map<String, dynamic> json) {
    return MeetingData(
      title: json['title'],
      meetingType: json['meetingType'],
      maxCount: json['maxCount'],
      currentCount: json['currentCount'],
      meetingTime: json['meetingTime'],
      createdTime: json['createdTime'],
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['title'] = title;
    data['meetingType'] = meetingType;
    data['maxCount'] = maxCount;
    data['currentCount'] = currentCount;
    data['meetingTime'] = meetingTime;
    data['createdTime'] = createdTime;
    return data;
  }
}