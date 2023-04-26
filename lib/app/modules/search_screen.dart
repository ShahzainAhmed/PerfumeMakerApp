import 'package:flutter/material.dart';
import 'package:perfume_maker/app/data/constants/app_colors.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search Screen"),
        backgroundColor: AppColors.kOrangeColor,
      ),
    );
  }
}
