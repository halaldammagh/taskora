import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    this.borderRadius = 16,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color ?? ColorManager.white,
        borderRadius: BorderRadius.circular(borderRadius.r),
      ),
      child: child,
    );
  }
}
