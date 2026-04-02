import 'package:flutter/material.dart';
import 'package:taskora/core/config/constants/color_manager.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: _buildCustomAppBar());
  }

  PreferredSizeWidget _buildCustomAppBar() {
    return AppBar(
      surfaceTintColor: ColorManager.transparent,
      elevation: 0,
      // toolbarHeight: index != 3 ?120.h : kToolbarHeight,
      leadingWidth: double.infinity,
    );
  }
}
