import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swm_miniproject_flutter/common/data/enums/group_type_enum.dart';
import 'package:swm_miniproject_flutter/common/data/models/meeting_model.dart';
import 'package:swm_miniproject_flutter/modules/home/controllers/meeting_controller.dart';
import 'package:swm_miniproject_flutter/routes/app_pages.dart';

class ExploreController extends MeetingController {

  final RxList<MeetingData> _dataList = RxList([
    MeetingData(
        title: '5시 30분 예림에서 짜장면 팟 구합니다~~',
        meetingType: GroupType.food,
        maxCount: 5,
        currentCount: 3,
        meetingTime: DateTime.now().add(const Duration(hours: 1)),
        createdTime: DateTime.now()),
    MeetingData(
        title: '아남타워 1층에서 커피챗 할 사람?',
        meetingType: GroupType.miscellaneous,
        maxCount: 7,
        currentCount: 7,
        meetingTime: DateTime.now().add(const Duration(hours: 1)),
        createdTime: DateTime.now()),
    MeetingData(
        title: '7시 서브웨이',
        meetingType: GroupType.food,
        maxCount: 5,
        currentCount: 4,
        meetingTime: DateTime.now().add(const Duration(hours: 1)),
        createdTime: DateTime.now()),
    MeetingData(
        title: '핵밥(아남타워 옆 건물)에서 같이 점심 드실 분~',
        meetingType: GroupType.food,
        maxCount: 3,
        currentCount: 3,
        meetingTime: DateTime.now().add(const Duration(hours: 1)),
        createdTime: DateTime.now()),
    MeetingData(
        title: '아직 팀 매칭 안되신 분들 8시에 씨앗방 1에서 이야기 나눠봐요',
        meetingType: GroupType.team,
        maxCount: 2,
        currentCount: 2,
        meetingTime: DateTime.now().add(const Duration(hours: 1)),
        createdTime: DateTime.now()),
  ]);

  @override
  List<String> get tabList => ['진행중', '완료된 모임'];

  @override
  RxList<MeetingData> get dataList => _dataList;
  @override
  bool get isParticipated => false;

  @override
  void onInit() {
    super.onInit();
  }


  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void getPosts() {
  }

  @override
  void onSearchPressed() {
    Get.toNamed(Routes.CREATE_MEETING);
  }

  @override
  void onProfilePressed() {
    Get.toNamed(Routes.CREATE_MEETING);
  }

}
