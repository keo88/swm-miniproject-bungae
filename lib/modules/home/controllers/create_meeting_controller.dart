import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:swm_miniproject_flutter/common/data/enums/group_type_enum.dart';
import 'package:swm_miniproject_flutter/routes/app_pages.dart';

class CreateMeetingController extends GetxController {

  final List<int> selectableDropDownDays = List.generate(10, (index) => index + 1);
  late TextEditingController nameController;
  late TextEditingController descriptionController;

  Rx<GroupType?> selectedType = GroupType.food.obs;

  var selectedDay = 1.obs;


  @override
  void onInit() {
    super.onInit();
    nameController = TextEditingController();
    descriptionController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    nameController.dispose();
    descriptionController.dispose();
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

  void onSelectDaysDropDown(int? value) {
    if (value != null) {
      selectedDay.value = value;
    }
  }
}
