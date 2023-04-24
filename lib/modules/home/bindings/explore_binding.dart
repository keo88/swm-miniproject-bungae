import 'package:swm_miniproject_flutter/modules/home/controllers/explore_controller.dart';
import 'package:get/get.dart';

class ExploreBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ExploreController>(ExploreController());
  }
}
