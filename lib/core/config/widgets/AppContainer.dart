import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/config/constants/app_sizes.dart';

import '../constants/color_manager.dart';

class AppContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final Color? color;
  final double borderRadius;

  const AppContainer({
    super.key,
    required this.child,
    this.padding,
    this.color,
    this.borderRadius = AppSizes.radiusXl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? const EdgeInsets.all(AppSizes.mdPaddingAll),
      decoration: BoxDecoration(
        color: color ?? ColorManager.white,
        borderRadius: BorderRadius.circular(borderRadius.r),
      ),
      child: child,
    );
  }
}
