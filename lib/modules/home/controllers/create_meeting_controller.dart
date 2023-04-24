import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:swm_miniproject_flutter/common/data/enums/group_type_enum.dart';
import 'package:swm_miniproject_flutter/routes/app_pages.dart';

class CreateMeetingController extends GetxController {
  late TextEditingController nameController;

  Rx<GroupType?> selectedType = GroupType.food.obs;

  @override
  void onInit() {
    super.onInit();
    nameController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    nameController.dispose();
    super.onClose();
  }

  void onSearchPressed() {
    Get.offNamed(Routes.CREATE_MEETING);
  }

  void onProfilePressed() {
    Get.offNamed(Routes.CREATE_MEETING);
  }

  void onGroupTypeSelected(GroupType type) {
    selectedType.value = type;
  }
}
