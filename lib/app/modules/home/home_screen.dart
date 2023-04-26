import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:perfume_maker/app/data/constants/app_assets.dart';
import 'package:perfume_maker/app/data/constants/app_colors.dart';
import 'package:perfume_maker/app/data/constants/app_typography.dart';
import 'package:perfume_maker/app/models/horizontal_model.dart';
import 'package:perfume_maker/app/models/vertical_model.dart';
import 'package:perfume_maker/app/modules/products/products_screen.dart';
import 'package:perfume_maker/app/modules/widgets/horizontal_list_widget.dart';
import 'package:perfume_maker/app/modules/widgets/row_widget.dart';
import 'package:perfume_maker/app/modules/widgets/vertical_list_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: const Icon(Icons.menu, color: AppColors.kBlackColor),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: CircleAvatar(
              foregroundImage: AssetImage(AppAssets.kAvatar),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Perfume", style: AppTypography.kBold28),
            Row(
              children: [
                Text("Makers", style: AppTypography.kBold28),
                Text("1890", style: AppTypography.kExtraLight28),
              ],
            ),
            const MyRowWidget(title: "Featured Collection"),
            SizedBox(height: 20.h),
            SizedBox(
              height: 200.h,
              child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(width: 20.w),
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: horizontalList.length,
                itemBuilder: (context, index) {
                  return HorizontalCard(
                    onTap: () => Get.to(() => const ProductsScreen()),
                    horizontalModel: horizontalList[index],
                  );
                },
              ),
            ),
            SizedBox(height: 20.h),
            const MyRowWidget(title: "Popular Products"),
            SizedBox(height: 20.h),
            SizedBox(
              height: 400.h,
              child: ListView.separated(
                physics: const ClampingScrollPhysics(),
                separatorBuilder: (context, index) => SizedBox(height: 10.h),
                scrollDirection: Axis.vertical,
                itemCount: verticalList.length,
                itemBuilder: (context, index) {
                  return VerticalCard(
                    onTap: () => Get.to(() => const ProductsScreen()),
                    verticalModel: verticalList[index],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
