import 'package:swm_miniproject_flutter/common/data/enums/group_type_enum.dart';

abstract class GroupImageBinder {

  static const _teamImage = 'assets/images/Team-Icon.png';
  static const _foodImage = 'assets/images/Food-Icon.png';
  static const _buildingImage = 'assets/images/Building-Icon.png';

  static String getGroupImagePath(GroupType type) {
    switch (type) {
      case GroupType.team:
        return _teamImage;
      case GroupType.food:
        return _foodImage;
      case GroupType.miscellaneous:
        return _buildingImage;
    }
  }
}