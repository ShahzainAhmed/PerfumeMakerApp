import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:perfume_maker/app/data/constants/app_colors.dart';

class MyCarouselButtons extends StatelessWidget {
  final Color color;
  final Icon icon;
  final VoidCallback onTap;
  const MyCarouselButtons({
    super.key,
    required this.onTap,
    required this.color,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(10.r)),
      child: IconButton(
        alignment: Alignment.center,
        onPressed: onTap,
        icon: icon,
      ),
    );
  }
}
