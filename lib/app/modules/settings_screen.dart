import 'package:flutter/material.dart';
import 'package:perfume_maker/app/data/constants/app_colors.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings Screen"),
        backgroundColor: AppColors.kOrangeColor,
      ),
    );
  }
}
