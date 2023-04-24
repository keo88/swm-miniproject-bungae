import 'package:swm_miniproject_flutter/modules/home/controllers/create_meeting_controller.dart';
import 'package:get/get.dart';

class CreateMeetingBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<CreateMeetingController>(CreateMeetingController());
  }
}
