import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:swm_miniproject_flutter/common/values/app_colors.dart';
import 'package:swm_miniproject_flutter/routes/app_pages.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final bool isNotOnMainPage;
  const CustomBottomNavigationBar({Key? key, required this.currentIndex, this.isNotOnMainPage = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90.h,
      child: BottomNavigationBar(
        currentIndex: currentIndex,
        backgroundColor: AppColors.kPrimaryColor,
        selectedItemColor: AppColors.white,
        unselectedItemColor: const Color(0xFF8C8C8C),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
        ],
        onTap: (index) {
          if (!isNotOnMainPage && index == currentIndex) return;
          if (index == 0) {
            Get.offAllNamed(Routes.HOME);
          } else if (index == 1) {
            Get.offAllNamed(Routes.EXPLORE);
          }
        },
      ),
    );
  }
}
