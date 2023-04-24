import 'package:flutter/material.dart';
import 'package:swm_miniproject_flutter/common/values/app_colors.dart';
import 'package:swm_miniproject_flutter/modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';
import 'package:swm_miniproject_flutter/modules/widgets/custom_app_bar.dart';
import 'package:swm_miniproject_flutter/modules/widgets/group_tile.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        onSearchPressed: controller.onSearchPressed,
        onProfilePressed: controller.onProfilePressed,
      ),
      body: Container(
        color: AppColors.kPrimaryColor,
        child: Obx(
          () {
            return ListView.builder(
              itemCount: controller.dataList.length,
              itemBuilder: (context, index) {
                return GroupTile(
                  index: index,
                  data: controller.dataList[index],
                  isParticipated: true
                );
              },
            );
          }
        ),
      ),
    );
  }
}
