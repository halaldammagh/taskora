import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/config/constants/color_manager.dart';

class ProjectsTab extends StatelessWidget {
  ProjectsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: Column(children: [SizedBox(height: 200.h)]),
    );
  }


  Widget _buildAppFloatingButton() {
    return FloatingActionButton(
      backgroundColor: ColorManager.primaryDark,
      clipBehavior: Clip.antiAlias,
      shape: CircleBorder(side: BorderSide(color: ColorManager.white)),
      onPressed: () {},
      child: Icon(Icons.add, color: ColorManager.white, size: 30.sp),
    );
  }
}
