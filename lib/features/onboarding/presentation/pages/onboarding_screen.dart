import 'package:auto_size_text/auto_size_text.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/config/constants/color_manager.dart';
import 'package:taskora/core/extensions/text_style_extension.dart';

import '../../../../../core/config/widgets/custom_elevated_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: Row(
        children: [
          SizedBox(width: 20),
          Column(children: [SizedBox(height: 200)]),
        ],
      ),
    );
  }

  Widget _buildOnboardingContent({
    required String boardImage,
    required String titleText,
    required String decText,
    required int? maxLine,
    required bool isNext,
    required VoidCallback onPressed,
    required double currentPage,
  }) {
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
                textAlign: TextAlign.center,
                titleText,
                maxLines: maxLine,
                  style: TextStyleExtension.primary20bold
              ),
              AutoSizeText(
                textAlign: TextAlign.center,
                decText,
                maxLines: maxLine,
                  style: TextStyleExtension.black18Normal
              ),
              CustomElevatedButton(
                borderRadius: 5,
                child: Row(
                  spacing: 5.w,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if(isNext)
                      Icon(
                            Icons.arrow_back_outlined,
                            color: ColorManager.white,
                            fontWeight: FontWeight.bold,
                      ),
                    Text(
                      isNext == true ? 'التالي' : "تسجيل الدخول",
                        style: TextStyleExtension.white16bold
                    ),
                  ],
                ),
                decorationColor: ColorManager.primaryDark,
                onPressed: onPressed,
              ),
              SizedBox(height: 80.h),
              DotsIndicator(
                dotsCount: 3,
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
