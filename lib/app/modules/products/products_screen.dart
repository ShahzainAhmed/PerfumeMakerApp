import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:perfume_maker/app/data/constants/app_assets.dart';
import 'package:perfume_maker/app/data/constants/app_colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:perfume_maker/app/data/constants/app_typography.dart';
import 'package:perfume_maker/app/models/carousel_slider_model.dart';
import 'package:perfume_maker/app/modules/products/components/carousel_buttons.dart';
import 'package:perfume_maker/app/modules/products/components/details_widget.dart';
import 'package:perfume_maker/app/modules/products/components/quantity_counter_widget.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  final CarouselController _controller = CarouselController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back_ios_new,
              color: AppColors.kBlackColor),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: CircleAvatar(
              foregroundImage: AssetImage(AppAssets.kAvatar),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyCarouselButtons(
                  onTap: () {
                    _controller.previousPage();
                  },
                  color: AppColors.kBlackColor,
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    color: AppColors.kWhiteColor,
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 300.h,
                    child: CarouselSlider(
                      carouselController: _controller,
                      items: carouselSliderItems,
                      options: CarouselOptions(
                          height: double.maxFinite,
                          enlargeCenterPage: true,
                          enableInfiniteScroll: true,
                          onPageChanged: (index, reason) {
                            setState(() {
                              _currentIndex = index;
                            });
                          }),
                    ),
                  ),
                ),
                MyCarouselButtons(
                  onTap: () {
                    _controller.nextPage();
                  },
                  color: AppColors.kOrangeColor,
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.kWhiteColor,
                  ),
                )
              ],
            ),
            SizedBox(height: 20.h),
            SizedBox(
              height: 300.h,
              width: double.maxFinite,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        carouselSliderList[_currentIndex].subTitle,
                        style: AppTypography.kMedium12.copyWith(
                          letterSpacing: 1,
                          color: AppColors.kGreyColor,
                        ),
                      ),
                      Text(
                        "Price",
                        style: AppTypography.kMedium14
                            .copyWith(color: AppColors.kOrangeColor),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        carouselSliderList[_currentIndex].title,
                        style: AppTypography.kBold20.copyWith(),
                      ),
                      Text(
                        carouselSliderList[_currentIndex].price,
                        style: AppTypography.kMedium20,
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    carouselSliderList[_currentIndex].description,
                    textAlign: TextAlign.justify,
                    style: AppTypography.kMedium10.copyWith(),
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyDetailsWidget(
                          title: carouselSliderList[_currentIndex].quantity),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Quantity", style: AppTypography.kMedium16),
                          SizedBox(height: 10.h),
                          const MyQuantityCounter(),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomSheet: Container(
        height: 60.h,
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: AppColors.kBlackColor,
          borderRadius: BorderRadius.vertical(top: Radius.circular(40.r)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Add to Cart",
              style: AppTypography.kMedium18
                  .copyWith(color: AppColors.kWhiteColor),
            ),
            SizedBox(width: 10.w),
            const Icon(
              Icons.shopping_bag_outlined,
              color: AppColors.kOrangeColor,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }
}
