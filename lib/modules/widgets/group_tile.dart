import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:swm_miniproject_flutter/common/data/group_image_binder.dart';
import 'package:swm_miniproject_flutter/common/data/models/meeting_model.dart';
import 'package:swm_miniproject_flutter/common/utils/utils.dart';
import 'package:swm_miniproject_flutter/common/values/app_colors.dart';
import 'package:swm_miniproject_flutter/common/values/styles/app_text_style.dart';

class GroupTile extends StatelessWidget {

  final int index;
  final MeetingData data;
  final bool isParticipated;

  const GroupTile({
    Key? key,
    required this.index,
    required this.data,
    required this.isParticipated,
  }) : super(key: key);

  Text getActionString() {
    final now = DateTime.now();
    String action = '';
    Color color = AppColors.alertColor;

    if (now.isBefore(data.meetingTime)) {
      if (isParticipated) {
        action = '나가기';
        color = AppColors.alertColor;
      } else {
        if (data.currentCount < data.maxCount) {
          action = '참여하기';
          color = AppColors.infoColor;
        } else {
          action = '마감';
        }
      }
    }

    return Text(action, style: AppTextStyle.timeLeftCaptionStyle.copyWith(color: color));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      height: 80.h,
      width: Get.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(index.toString(), style: AppTextStyle.indexStyle),
          SizedBox(width: 5.w),
          SizedBox(
            width: 50.w,
            height: 50.h,
            child: Image.asset(
              GroupImageBinder.getGroupImagePath(data.meetingType),
            ),
          ),
          SizedBox(width: 5.w),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.title,
                  style: AppTextStyle.titleStyle,
                  maxLines: 1,
                  overflow: TextOverflow.fade,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                    radius: 10.r,
                    backgroundColor: const Color(0xFF383838),
                    child: Icon(
                      Icons.person,
                      color: AppColors.white,
                      size: 13.r,
                    )
                    ),
                    SizedBox(width: 4.w),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: data.currentCount.toString(),
                            style: AppTextStyle.groupLimitCaptionStyle.copyWith(
                              color: AppColors.white,
                            )
                          ),
                          TextSpan(
                            text: ' / ${data.maxCount}',
                            style: AppTextStyle.groupLimitCaptionStyle,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 8.w),
                    Text(
                      Utils.formatTimeElapsedDuration(data.createdTime.difference(DateTime.now())),
                      style: AppTextStyle.timeLeftCaptionStyle
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: getActionString(),
                      )
                    ),
                    SizedBox(width: 8.w),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
