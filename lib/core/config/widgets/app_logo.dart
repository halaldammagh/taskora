import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/config/constants/app_sizes.dart';

class AppLogo extends StatelessWidget {
  final double? width;
  final double? height;

  const AppLogo({super.key, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/logo.png',
      width: width ?? AppSizes.mdSizeImage.w,
      height: height ?? AppSizes.mdSizeImage.h,
      fit: BoxFit.contain,
    );
  }
}
