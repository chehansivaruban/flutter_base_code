import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/values/colors.dart';
import '../../core/values/text_styles.dart';

class BottomNavIcon extends StatelessWidget {
  const BottomNavIcon({
    super.key,
    required this.onTap,
    required this.index,
    required this.activeIndex,
    required this.icon,
    required this.text,
    required this.activeIcon,
  });

  final VoidCallback onTap;
  final int index;
  final int activeIndex;
  final Widget icon;
  final String text;
  final Widget activeIcon;
  @override
  Widget build(BuildContext context) {
    Color getTabColor() {
      if (index == activeIndex) {
        return AppColors.primaryRed;
      } else {
        return AppColors.dashboardTextGrey;
      }
    }

    Widget getTabIcon() {
      if (index == activeIndex) {
        return activeIcon;
      } else {
        return icon;
      }
    }

    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: 44.w,
        height: 36,
        child: Column(
          children: [
            getTabIcon(),
            const SizedBox(height: 4),
            Text(
              text,
              style: sanFranciscoSemiBold.copyWith(
                fontSize: 10,
                color: getTabColor(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
