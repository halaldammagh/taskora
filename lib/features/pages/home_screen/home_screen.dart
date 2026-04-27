import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/config/constants/color_manager.dart';
import 'package:taskora/core/config/constants/icon_path.dart';
import 'package:taskora/core/extensions/text_style_extension.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildCustomAppBar(),
      body: Column(children: []),
    );
  }
}

PreferredSizeWidget _buildCustomAppBar() {
  return AppBar(
    backgroundColor: ColorManager.white,
    surfaceTintColor: ColorManager.transparent,
    elevation: 0,
    // toolbarHeight: index != 3 ?120.h : kToolbarHeight,
    leadingWidth: double.infinity,
    leading: Row(
      children: [
        Padding(
          padding: EdgeInsets.all(10.sp),
          child: CircleAvatar(
            backgroundColor: ColorManager.white,
            child: Image.asset('assets/images/Ellipse 1336.png'),
          ),
        ),

        Text('مرحبا هديل', style: TextStyleExtension.black16Medium),
      ],
    ),
    actions: [
      InkWell(onTap: () {}, child: Image.asset(IconPath.notification)),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.sp),
        child: InkWell(onTap: () {}, child: Image.asset(IconPath.sliders)),
      ),
    ],
  );
}
