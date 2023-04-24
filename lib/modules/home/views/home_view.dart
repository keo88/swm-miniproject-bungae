import 'package:flutter/material.dart';
import 'package:swm_miniproject_flutter/common/values/app_colors.dart';
import 'package:swm_miniproject_flutter/modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.kPrimaryColor,
        leading: IconButton(
          onPressed: controller.onSearchPressed,
          icon: const Icon(Icons.search)
        ),
        actions: const [
          CircleAvatar(
            radius: 14,
            backgroundColor: Color(0xFF383838),
            child: Icon(Icons.person)
          ),
        ],
      ),
      body: SizedBox.expand(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Container(
              height: 100,
              color: Colors.red,
            );
          },
        ),
      ),
    );
  }
}
