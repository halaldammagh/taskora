import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/config/constants/app_sizes.dart';

import '../../extensions/text_style_extension.dart';
import '../constants/color_manager.dart';
import '../constants/icon_path.dart';
import 'app_rich_text.dart';
import 'custom_app_card.dart';

class ProjectListCard extends StatelessWidget {
  ProjectListCard({
    super.key,
    required this.title,
    required this.secTitle,
    required this.onPressed,
    required this.widthFactor,
    required this.hour,
    required this.totalHour,
    required this.task,
    required this.totalTask,
  });

  String title;
  String secTitle;
  VoidCallback onPressed;
  double widthFactor;
  int hour;
  int totalHour;
  int task;
  int totalTask;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppSizes.mdPaddingAll.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 200.h),
          CustomAppCard(
            height: 148.h,
            width: 341.w,
            borderRadius: AppSizes.radiusXl.r,
            borderColor: ColorManager.secondary,
            backgroundColor: ColorManager.secondaryLight,
            borderWidth: 1,
            boxShadow: [
              BoxShadow(
                color: ColorManager.secondary,
                blurRadius: 10.w,
                offset: Offset(0, 4.w),
              ),
            ],
            child: Padding(
              padding: EdgeInsets.only(right: 14.w, top: 18.h, left: 8.w),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: onPressed,
                        icon: Icon(
                          Icons.arrow_back_ios_new,
                          color: ColorManager.textSecondary.withOpacity(0.6),
                          size: 20,
                        ),
                      ),
                      AppRichText(
                        textAlign: TextAlign.end,
                        text: '\n $title',
                        textStyle: TextStyleExtension.black16Bold,
                        clickableText: secTitle,
                        clickTextStyle:
                            TextStyleExtension.textSecondary16Medium,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10.w,
                      right: 10.w,
                      top: 24.h,
                    ),
                    child: Stack(
                      children: [
                        Container(
                          height: 9.h,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                        ),

                        Align(
                          alignment: AlignmentDirectional.centerEnd,
                          child: FractionallySizedBox(
                            widthFactor: widthFactor,
                            child: Container(
                              height: 9.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  AppSizes.radiusLg,
                                ),
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xFF2F8F83),
                                    Color(0xFF6CC1B2),
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 10.w,
                      left: 55.w,
                      top: 10.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 4),
                            Padding(
                              padding: EdgeInsets.only(top: 4.h),
                              child: Text(
                                "مهمة",
                                style: TextStyleExtension.textSecondary16Medium,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 4.h),
                              child: Text(
                                " $totalTask/$task ",
                                style: TextStyleExtension.textSecondary16Medium,
                              ),
                            ),
                            Image.asset(IconPath.greyDone),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: 4),
                            Padding(
                              padding: EdgeInsets.only(top: 4.h),
                              child: Text(
                                "ساعة",
                                style: TextStyleExtension.textSecondary16Medium,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 4.h),
                              child: Text(
                                " $totalHour/$hour",
                                style: TextStyleExtension.textSecondary16Medium,
                              ),
                            ),
                            Image.asset(IconPath.greyClock),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
