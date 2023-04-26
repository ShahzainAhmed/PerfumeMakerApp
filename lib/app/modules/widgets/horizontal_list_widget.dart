import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:perfume_maker/app/data/constants/app_colors.dart';
import 'package:perfume_maker/app/data/constants/app_typography.dart';
import 'package:perfume_maker/app/models/horizontal_model.dart';

class HorizontalCard extends StatefulWidget {
  final VoidCallback onTap;
  final HorizontalModel horizontalModel;
  const HorizontalCard(
      {super.key, required this.horizontalModel, required this.onTap});

  @override
  State<HorizontalCard> createState() => _HorizontalCardState();
}

class _HorizontalCardState extends State<HorizontalCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: AppColors.kWhiteColor,
          boxShadow: [
            BoxShadow(
              color: AppColors.kGreyColor.withOpacity(0.2),
              blurRadius: 5,
              offset: const Offset(2, 1),
            ),
          ],
        ),
        child: Column(
          children: [
            SizedBox(
              height: 150.h,
              width: 150.h,
              child: Image.asset(
                widget.horizontalModel.image,
              ),
            ),
            Text(
              widget.horizontalModel.subTitle,
              style: AppTypography.kLight10.copyWith(
                letterSpacing: 1,
                color: AppColors.kGreyColor,
              ),
            ),
            Text(widget.horizontalModel.title, style: AppTypography.kBold14),
          ],
        ),
      ),
    );
  }
}


/* 
GestureDetector(
      onTap: widget.onTap,
      child: Container(
        height: 100.h,
        width: 200.w,
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: AppColors.kWhiteColor,
          boxShadow: [
            BoxShadow(
              color: AppColors.kGreyColor.withOpacity(0.2),
              blurRadius: 5,
              offset: const Offset(2, 1),
            ),
          ],
        ),
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.bottomCenter,
          children: [
            Positioned(
              top: -50.h,
              child: SizedBox(
                height: 150.h,
                width: 150.h,
                child: Image.asset(
                  widget.horizontalModel.image,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  widget.horizontalModel.subTitle,
                  style: AppTypography.kLight10.copyWith(
                    letterSpacing: 1,
                    color: AppColors.kGreyColor,
                  ),
                ),
                Text(widget.horizontalModel.title,
                    style: AppTypography.kBold14),
              ],
            ),
          ],
        ),
      ),
    )
 */


/* 
  clipBehavior: Clip.none,
          alignment: Alignment.bottomCenter,
 */