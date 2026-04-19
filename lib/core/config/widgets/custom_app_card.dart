import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/config/constants/app_sizes.dart';
import 'package:taskora/core/config/constants/color_manager.dart';

class CustomAppCard extends StatelessWidget {
  final Widget child;
  final Color? backgroundColor;
  final double? borderRadius;
  final Color? borderColor;
  final double? borderWidth;
  final List<BoxShadow>? boxShadow;
  final EdgeInsetsGeometry? padding;
  final double? width;
  final double? height;

  const CustomAppCard({
    super.key,
    required this.child,
    this.backgroundColor,
    this.borderRadius,
    this.borderColor,
    this.borderWidth,
    this.boxShadow,
    this.padding,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 160.w,
      height: height ?? 126.11.h,
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor ?? ColorManager.white,
        borderRadius: BorderRadius.circular(
            borderRadius ?? AppSizes.radiusXl.r),
        border: Border.all(
          color: borderColor ?? ColorManager.secondary.withOpacity(1),
          width: borderWidth ?? 1.w,
        ),
        boxShadow:
            boxShadow ??
            [
              BoxShadow(
                color: ColorManager.secondary,
                blurRadius: 10.w,
                offset: Offset(0, 8.w),
              ),
            ],
      ),
      child: child,
    );
  }
}
