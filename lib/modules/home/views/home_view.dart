import 'package:flutter/material.dart';
import 'package:swm_miniproject_flutter/modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';
import 'package:swm_miniproject_flutter/modules/home/widgets/meeting_tab_view.dart';
import 'package:swm_miniproject_flutter/modules/widgets/custom_app_bar.dart';
import 'package:swm_miniproject_flutter/modules/widgets/custom_bottom_navigation_bar.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        onSearchPressed: controller.onSearchPressed,
        onProfilePressed: controller.onProfilePressed,
      ),
      body: MeetingTabView(controller: controller),
      bottomNavigationBar: const CustomBottomNavigationBar(currentIndex: 0),
    );
  }
}
