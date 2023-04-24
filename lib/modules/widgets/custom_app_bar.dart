import 'package:flutter/material.dart';
import 'package:swm_miniproject_flutter/common/values/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final void Function() onSearchPressed;
  final void Function() onProfilePressed;

  const CustomAppBar({
    Key? key,
    required this.onSearchPressed,
    required this.onProfilePressed,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.kPrimaryColor,
      elevation: 0.0,
      leading: IconButton(
          onPressed: onSearchPressed,
          icon: const Icon(Icons.search)
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            onPressed: onProfilePressed,
            icon: const CircleAvatar(
                radius: 14,
                backgroundColor: Color(0xFF383838),
                child: Icon(Icons.person, color: AppColors.white)
            ),
          ),
        ),
      ],
    );
  }

}
