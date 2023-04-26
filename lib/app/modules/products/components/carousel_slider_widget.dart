import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:perfume_maker/app/data/constants/app_colors.dart';
import 'package:perfume_maker/app/models/carousel_slider_model.dart';

class MyCarouselSlider extends StatefulWidget {
  const MyCarouselSlider({super.key});

  @override
  State<MyCarouselSlider> createState() => _MyCarouselSliderState();
}

class _MyCarouselSliderState extends State<MyCarouselSlider> {
  int _currentIndex = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 50.h,
          decoration: BoxDecoration(
              color: AppColors.kBlackColor,
              borderRadius: BorderRadius.circular(10.r)),
          child: IconButton(
            alignment: Alignment.center,
            onPressed: () {
              _controller.previousPage();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: AppColors.kWhiteColor,
            ),
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
        Container(
          height: 50.h,
          decoration: BoxDecoration(
              color: AppColors.kOrangeColor,
              borderRadius: BorderRadius.circular(10.r)),
          child: IconButton(
            onPressed: () {
              _controller.nextPage();
            },
            icon: const Icon(Icons.arrow_forward_ios,
                color: AppColors.kWhiteColor),
          ),
        ),
      ],
    );
  }
}
