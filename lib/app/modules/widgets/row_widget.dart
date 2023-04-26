import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:perfume_maker/app/data/constants/app_typography.dart';
import 'package:perfume_maker/app/modules/widgets/icon_button.dart';

class MyRowWidget extends StatelessWidget {
  final String title;
  const MyRowWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: AppTypography.kMedium18),
          const MyIconButton(),
        ],
      ),
    );
  }
}
