import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:perfume_maker/app/modules/products/products_screen.dart';

class MyIconButton extends StatelessWidget {
  const MyIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ElevatedButton.icon(
        onPressed: () => Get.to(() => const ProductsScreen()),
        icon: const Icon(Icons.arrow_back_ios),
        label: const Text("see all"),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 6.w),
          backgroundColor: Colors.deepOrange,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
        ),
      ),
    );
  }
}
