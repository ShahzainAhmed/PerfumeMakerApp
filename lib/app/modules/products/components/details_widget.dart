import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:perfume_maker/app/data/constants/app_colors.dart';
import 'package:perfume_maker/app/data/constants/app_typography.dart';

class MyDetailsWidget extends StatelessWidget {
  final String title;
  const MyDetailsWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Details", style: AppTypography.kMedium16),
        SizedBox(height: 10.h),
        Row(
          children: [
            CircleAvatar(
              radius: 5.r,
              backgroundColor: AppColors.kOrangeColor,
            ),
            SizedBox(
              width: 20.w,
            ),
            Text(
              title,
              style: AppTypography.kMedium12,
            ),
          ],
        ),
        Row(
          children: [
            CircleAvatar(
              radius: 5.r,
              backgroundColor: AppColors.kOrangeColor,
            ),
            SizedBox(
              width: 20.w,
            ),
            Text(
              "Alcohol free 100%",
              style: AppTypography.kMedium12,
            ),
          ],
        )
      ],
    );
  }
}
