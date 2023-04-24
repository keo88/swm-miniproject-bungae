import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:swm_miniproject_flutter/common/values/app_colors.dart';
import 'package:swm_miniproject_flutter/common/values/styles/app_text_style.dart';
import 'package:swm_miniproject_flutter/modules/home/controllers/meeting_controller.dart';
import 'package:swm_miniproject_flutter/modules/widgets/group_tile.dart';

class MeetingTabView extends StatelessWidget {
  final MeetingController controller;
  const MeetingTabView({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.kPrimaryColor,
      child: Column(
        children: [
          SizedBox(
            height: 70.h,
            child: TabBar(
              controller: controller.tabController,
              indicatorColor: AppColors.white,
              labelStyle: AppTextStyle.tabBarStyle,
              tabs: controller.tabList.map((text) => Tab(
                text: text,
              )).toList(),
            ),
          ),
          Container(
            height: 0.5,
            color: AppColors.white.withOpacity(0.2),
          ),
          Expanded(
            child: TabBarView(
              controller: controller.tabController,
              children: controller.tabList.map((text) => Obx(
                      () {
                    return ListView.builder(
                      itemCount: controller.dataList.length,
                      itemBuilder: (context, index) {
                        return GroupTile(
                            index: index + 1,
                            data: controller.dataList[index],
                            isParticipated: controller.isParticipated
                        );
                      },
                    );
                  }
              )).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
