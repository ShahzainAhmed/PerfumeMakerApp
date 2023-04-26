import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:perfume_maker/app/data/constants/app_colors.dart';
import 'package:perfume_maker/app/data/constants/app_typography.dart';
import 'package:perfume_maker/app/models/vertical_model.dart';

class VerticalCard extends StatefulWidget {
  final VoidCallback onTap;
  final VerticalModel verticalModel;

  const VerticalCard(
      {super.key, required this.verticalModel, required this.onTap});

  @override
  State<VerticalCard> createState() => _VerticalCardState();
}

class _VerticalCardState extends State<VerticalCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20.w),
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
            color: AppColors.kWhiteColor,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: SizedBox(
            height: 80.h,
            child: Center(
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Image.asset(
                  widget.verticalModel.image,
                  height: 50.h,
                  width: 50.w,
                ),
                title: Text(
                  widget.verticalModel.title,
                  style: AppTypography.kBold14.copyWith(),
                ),
                subtitle: Text(
                  widget.verticalModel.quantity,
                  style: AppTypography.kLight12.copyWith(
                    color: AppColors.kGreyColor,
                  ),
                ),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Price",
                      style: AppTypography.kLight10.copyWith(
                        letterSpacing: 1,
                        color: AppColors.kOrangeColor,
                      ),
                    ),
                    Text(
                      widget.verticalModel.price,
                      style: AppTypography.kMedium18,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
