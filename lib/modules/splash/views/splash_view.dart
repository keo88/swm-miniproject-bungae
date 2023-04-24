import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:swm_miniproject_flutter/common/values/app_colors.dart';
import 'package:swm_miniproject_flutter/common/values/styles/app_text_style.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              color: AppColors.kPrimaryColor,
            ),
            Image.asset('assets/images/Bungae-Logo.png'),
            Text(
              '번개모임',
              style: AppTextStyle.headline6,
            ),
          ],
        ),
      ),
    );
  }
}
