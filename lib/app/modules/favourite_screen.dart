import 'package:flutter/material.dart';
import 'package:perfume_maker/app/data/constants/app_colors.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favourite Screen"),
        backgroundColor: AppColors.kOrangeColor,
      ),
    );
  }
}
