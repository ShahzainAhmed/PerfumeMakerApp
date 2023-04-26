import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:perfume_maker/app/data/constants/app_colors.dart';
import 'package:perfume_maker/app/data/constants/app_typography.dart';

class MyQuantityCounter extends StatefulWidget {
  const MyQuantityCounter({super.key});

  @override
  State<MyQuantityCounter> createState() => MyQuantityCounterState();
}

class MyQuantityCounterState extends State<MyQuantityCounter> {
  int _count = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 40.h,
          width: 40.w,
          decoration: BoxDecoration(
            color: AppColors.kBlackColor,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: IconButton(
              onPressed: () {
                if (_count > 1) {
                  setState(() {
                    _count--;
                  });
                }
              },
              icon: const Icon(
                Icons.remove,
                color: AppColors.kWhiteColor,
              )),
        ),
        SizedBox(width: 15.w),
        Text(
          _count.toString().padLeft(2, '0'),
          style: AppTypography.kMedium16,
        ),
        SizedBox(width: 15.w),
        Container(
          height: 40.h,
          width: 40.w,
          decoration: BoxDecoration(
            color: AppColors.kOrangeColor,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: IconButton(
              onPressed: () {
                setState(() {
                  _count++;
                });
              },
              icon: const Icon(
                Icons.add,
                color: AppColors.kWhiteColor,
              )),
        )
      ],
    );
  }
}
