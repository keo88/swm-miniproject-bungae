import 'package:flutter/material.dart';
import 'package:swm_miniproject_flutter/common/data/models/meeting_model.dart';

class GroupTile extends StatelessWidget {
  final int index;
  final Widget leading;
  final MeetingData data;

  const GroupTile({
    Key? key,
    required this.index,
    required this.leading,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        children: [

        ],
      ),
    );
  }
}
