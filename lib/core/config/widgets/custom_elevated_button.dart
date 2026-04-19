import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/config/constants/app_sizes.dart';
import 'package:taskora/core/config/constants/color_manager.dart';

class CustomElevatedButton extends StatelessWidget {
  Color decorationColor;
  Color? borderSideColor;
  Widget child;
  void Function() onPressed;
  double borderRadius;

  CustomElevatedButton({
    super.key,
    required this.child,
    required this.decorationColor,
    this.borderSideColor,
    required this.onPressed,
    this.borderRadius = AppSizes.radiusXl,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        side: BorderSide(color: borderSideColor ?? ColorManager.transparent),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius.r),
        ),
        backgroundColor: decorationColor,
        padding: EdgeInsets.symmetric(vertical: AppSizes.lgPaddingVertical),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
