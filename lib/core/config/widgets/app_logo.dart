import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppLogo extends StatelessWidget {
  final double? width;
  final double? height;

  const AppLogo({super.key, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/logo.png',
      width: width ?? 150.w,
      height: height ?? 150.h,
      fit: BoxFit.contain,
    );
  }
}
