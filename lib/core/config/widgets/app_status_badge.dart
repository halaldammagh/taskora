import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/config/constants/color_manager.dart';

import '../../extensions/text_style_extension.dart';

class AppStatusBadge extends StatelessWidget {
  Color? bGColor;

  Color? textColor;
  String text;

  AppStatusBadge({
    super.key,
    this.bGColor,
    Color textColor = ColorManager.highText,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 76.19.w,
      height: 29.07.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: bGColor ?? ColorManager.highBg,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 7.0.h),
        child: Text(
          text,
          style: TextStyleExtension.status13Medium.copyWith(color: textColor),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
