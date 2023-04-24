import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swm_miniproject_flutter/common/data/enums/group_type_enum.dart';
import 'package:swm_miniproject_flutter/common/data/group_image_binder.dart';
import 'package:swm_miniproject_flutter/common/values/app_colors.dart';
import 'package:swm_miniproject_flutter/common/values/styles/app_text_style.dart';
import 'package:swm_miniproject_flutter/modules/home/controllers/create_meeting_controller.dart';
import 'package:get/get.dart';
import 'package:swm_miniproject_flutter/modules/widgets/custom_app_bar.dart';
import 'package:swm_miniproject_flutter/modules/widgets/custom_bottom_navigation_bar.dart';

class CreateMeetingView extends GetView<CreateMeetingController> {
  const CreateMeetingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        onSearchPressed: controller.onSearchPressed,
        onProfilePressed: controller.onProfilePressed,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        color: AppColors.kPrimaryColor,
        child: Column(
          children: [
            TextField(
              controller: controller.nameController,
              decoration: InputDecoration(
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFA9A9A9)),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFA9A9A9)),
                ),
                border: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFA9A9A9)),
                ),
                labelText: '모임의 이름을 작성해주세요 (30자 이내)',
                labelStyle: AppTextStyle.meetingNameStyle,
              ),
              style: AppTextStyle.meetingNameStyle.copyWith(
                fontSize: 26,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
                height: 80,
                width: Get.width,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: GroupType.values.map((type) {
                    return Obx(() {
                      return Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: type == controller.selectedType.value
                              ? Colors.red
                              : Colors.transparent,
                        ),
                        child: InkWell(
                          onTap: () => controller.onGroupTypeSelected(type),
                          child: Center(
                            child: SizedBox(
                              width: 70,
                              height: 70,
                              child: CircleAvatar(
                                backgroundColor: AppColors.kPrimaryColor,
                                child: Image.asset(
                                  GroupImageBinder.getGroupImagePath(type),
                                  width: 60,
                                  height: 60,
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    });
                  }).toList(),
                )
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '모임의 종류를 선택해주세요',
                style: AppTextStyle.timeLeftCaptionStyle.copyWith(
                  color: const Color(0xFFA9A9A9),
                ),
              ),
            ),
            const SizedBox(height: 45),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                    radius: 13,
                    backgroundColor: Color(0xFF383838),
                    child: Icon(
                      Icons.person,
                      color: AppColors.white,
                      size: 15,
                    )
                ),
                const SizedBox(width: 5),
                Text(
                  '모집인원',
                  style: AppTextStyle.regularStyle.copyWith(
                    fontSize: 24,
                    color: const Color(0xFFA9A9A9),
                  ),
                ),
                const SizedBox(width: 5),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.doveGray,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Obx(
                    () {
                      return DropdownButton<int>(
                        isDense: true,
                        underline: const SizedBox(),
                        value: controller.selectedDay.value,
                        items: controller.selectableDropDownDays.map((day) {
                          return DropdownMenuItem(
                            value: day,
                            child: Text(
                              day.toString(),
                              style: AppTextStyle.regularStyle.copyWith(
                                fontSize: 18,
                                color: const Color(0xFFA9A9A9),
                              ),
                            ),
                          );
                        }).toList(),
                        onChanged: controller.onSelectDaysDropDown,
                      );
                    }
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            TextField(
              controller: controller.descriptionController,
              maxLines: 6,
              minLines: 6,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: const OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFA9A9A9)),
                ),
                labelText: '모임에 대한 간단한 설명을 해주세요',
                labelStyle: AppTextStyle.meetingNameStyle,
                floatingLabelBehavior: FloatingLabelBehavior.never,
              ),
              style: AppTextStyle.meetingNameStyle.copyWith(
                fontSize: 26,
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        Get.back();
                      },
                      style: OutlinedButton.styleFrom(
                        side: BorderSide.none,
                        backgroundColor: const Color(0xFFA9A9A9),
                        fixedSize: Size(175.w, 75),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        '취소',
                        style: AppTextStyle.regularStyle.copyWith(
                          fontSize: 20,
                          color: AppColors.doveGray,
                        ),
                      ),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        Get.back();
                      },
                      style: OutlinedButton.styleFrom(
                        side: BorderSide.none,
                        backgroundColor: AppColors.alertColor,
                        fixedSize: Size(175.w, 75),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        '작성하기',
                        style: AppTextStyle.regularStyle.copyWith(
                          fontSize: 20,
                          color: AppColors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20)
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(
          currentIndex: 1, isNotOnMainPage: true),
    );
  }
}
