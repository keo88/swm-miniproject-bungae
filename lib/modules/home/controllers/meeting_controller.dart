import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swm_miniproject_flutter/common/data/models/meeting_model.dart';

abstract class MeetingController extends GetxController with GetSingleTickerProviderStateMixin {
  late TabController tabController;

  bool get isParticipated;

  List<String> get tabList;
  RxList<MeetingData> get dataList;

  @override void onInit() {
    super.onInit();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }

  void onSearchPressed();

  void onProfilePressed();
}
