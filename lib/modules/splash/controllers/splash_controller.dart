import 'package:get/get.dart';
import 'package:swm_miniproject_flutter/common/constants.dart';
import 'package:swm_miniproject_flutter/routes/app_pages.dart';

class SplashController extends GetxController {


  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async {
    await Future.delayed(Constants.splashTime);
    Get.offNamed(Routes.HOME);
  }

  @override
  void onClose() {
    super.onClose();
  }
}
