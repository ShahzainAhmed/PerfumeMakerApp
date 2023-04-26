import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:perfume_maker/app/data/constants/app_colors.dart';
import 'package:perfume_maker/app/modules/favourite_screen.dart';
import 'package:perfume_maker/app/modules/home/home_screen.dart';
import 'package:perfume_maker/app/modules/products/products_screen.dart';
import 'package:perfume_maker/app/modules/search_screen.dart';
import 'package:perfume_maker/app/modules/settings_screen.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  List<Widget> pages = [
    const HomeScreen(), // index 0
    const SearchScreen(), // index 1
    const FavouriteScreen(), // index 2
    const SettingsScreen(), // index 3
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[_currentIndex],
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
        child: FloatingNavbar(
          selectedBackgroundColor: Colors.transparent,
          iconSize: 30.sp,
          backgroundColor: AppColors.kBlackColor,
          borderRadius: 80.r,
          selectedItemColor: AppColors.kOrangeColor,
          unselectedItemColor: AppColors.kWhiteColor,
          items: [
            FloatingNavbarItem(icon: Icons.home),
            FloatingNavbarItem(icon: Icons.search),
            FloatingNavbarItem(icon: Icons.favorite_outline),
            FloatingNavbarItem(icon: Icons.settings),
          ],
          currentIndex: _currentIndex,
          onTap: (int val) => setState(() => _currentIndex = val),
        ),
      ),
    );
  }
}
