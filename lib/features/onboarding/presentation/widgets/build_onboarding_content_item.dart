import 'package:auto_size_text/auto_size_text.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/config/constants/color_manager.dart';
import '../../../../core/config/widgets/custom_elevated_button.dart';
import '../../../../core/extensions/text_style_extension.dart';

class BuildOnboardingContent extends StatelessWidget {
  final String boardImage;
  final String titleText;
  final String decText;
  final int maxLine;
  final bool isNext;
  final VoidCallback onPressed;
  final double currentPage;
  final int totalPages;

  const BuildOnboardingContent({
    super.key,
    required this.boardImage,
    required this.titleText,
    required this.decText,
    required this.maxLine,
    required this.isNext,
    required this.onPressed,
    required this.currentPage,
    required this.totalPages,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(boardImage, width: double.infinity, fit: BoxFit.cover),
        Padding(
          padding: EdgeInsets.only(top: 50.h, left: 38, right: 38),
          child: Column(
            spacing: 22.h,
            children: [
              AutoSizeText(
                titleText,
                textAlign: TextAlign.center,
                maxLines: maxLine,
                style: TextStyleExtension.primary20bold,
              ),
              AutoSizeText(
                decText,
                textAlign: TextAlign.center,
                maxLines: maxLine,
                style: TextStyleExtension.black18Normal,
              ),
              CustomElevatedButton(
                borderRadius: 5,
                decorationColor: ColorManager.primaryDark,
                onPressed: onPressed,
                child: Row(
                  spacing: 5.w,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Text(
                      isNext ? 'التالي' : 'تسجيل الدخول',
                      style: TextStyleExtension.white16bold,
                    ),
                    if (isNext)
                      const Icon(
                        Icons.arrow_forward, // ← arrow_forward لأن RTL
                        color: ColorManager.white,
                      ),
                  ],
                ),
              ),
              SizedBox(height: 80.h),
              DotsIndicator(
                dotsCount: totalPages,
                position: currentPage,
                decorator: DotsDecorator(
                  activeColor: ColorManager.primaryDark,
                  size: Size.square(7.0.sp),
                  activeSize: Size(20.0.sp, 7.0.sp),
                  activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0.r),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}