import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/config/constants/color_manager.dart';
import 'package:taskora/core/config/constants/icon_path.dart';
import 'package:taskora/core/config/widgets/custom_app_card.dart';
import 'package:taskora/core/extensions/text_style_extension.dart';

import '../../../../../core/config/widgets/app_rich_text.dart';

class ProjectsTab extends StatelessWidget {
  ProjectsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: Column(children: [SizedBox(height: 200.h)]),
    );
  }

  Widget _buildAppProjectListCard({
    required String title,
    required String secTitle,
    required VoidCallback onPressed,
    required double widthFactor,
    required int hour,
    required int totalHour,
    required int task,
    required int totalTask,
  }) {
    return Padding(
      padding: EdgeInsets.all(15.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 200.h),
          CustomAppCard(
            height: 148.h,
            width: 341.w,
            borderRadius: 15.r,
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
                                borderRadius: BorderRadius.circular(10),
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

  Widget _buildAppFloatingButton() {
    return FloatingActionButton(
      backgroundColor: ColorManager.primaryDark,
      clipBehavior: Clip.antiAlias,
      shape: CircleBorder(side: BorderSide(color: ColorManager.white)),
      onPressed: () {},
      child: Icon(Icons.add, color: ColorManager.white, size: 30),
    );
  }
}
