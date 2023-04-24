import 'package:flutter/material.dart';
import 'package:swm_miniproject_flutter/common/data/models/meeting_model.dart';
import 'package:swm_miniproject_flutter/common/utils/utils.dart';
import 'package:swm_miniproject_flutter/common/values/app_colors.dart';
import 'package:swm_miniproject_flutter/common/values/styles/app_text_style.dart';

class GroupTile extends StatelessWidget {

  final int index;
  final Widget leading;
  final MeetingData data;
  final bool isParticipated;

  const GroupTile({
    Key? key,
    required this.index,
    required this.leading,
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
        action = '참여하기';
        color = AppColors.kPrimaryColor;
      }
    }

    return Text(action, style: AppTextStyle.timeLeftCaptionStyle.copyWith(color: color));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(index.toString(), style: AppTextStyle.indexStyle),
          leading,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(data.title, style: AppTextStyle.titleStyle),
              Row(
                children: [
                  const CircleAvatar(
                  radius: 14,
                  backgroundColor: Color(0xFF383838),
                  child: Icon(Icons.person, color: AppColors.white)
                  ),
                  const SizedBox(width: 4),
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
                  const SizedBox(width: 8),
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
                  const SizedBox(width: 8),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
