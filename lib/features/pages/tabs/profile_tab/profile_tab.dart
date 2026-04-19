import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/extensions/text_style_extension.dart';

import '../../../../../core/config/constants/color_manager.dart';
import '../../../../../core/config/constants/icon_path.dart';
import '../../../../../core/config/widgets/app_rich_text.dart';
import '../../../../../core/config/widgets/custom_app_card.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 200.h),
          _buildProfileOptionItem(),
        ],
      ),
    );
  }

  Widget _buildAppDashboardCard() {
    return CustomAppCard(
      width: 343.w,
      height: 128.h,
      backgroundColor: ColorManager.primaryLight,
      borderRadius: 31.r,
      borderColor: ColorManager.transparent,
      boxShadow: [BoxShadow(color: ColorManager.transparent)],
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 14.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 30.w,
          children: [
            _buildCustomColumn(
              image: IconPath.success,
              label: 'المشاريع',
              backGroundColor: ColorManager.orang,
              hours: '5',
            ),
            _buildCustomColumn(
              image: IconPath.whiteClock,
              label: 'ساعات العمل',
              backGroundColor: ColorManager.accent,
              hours: '240',
            ),
            _buildCustomColumn(
              image: IconPath.whiteDollar,
              label: 'إجمالي الأرباح',
              backGroundColor: ColorManager.success,
              hours: " \$8.500 ",
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCustomColumn({
    required Color backGroundColor,
    required String image,
    required String hours,
    required String label,
  }) {
    return Column(
      children: [
        CustomAppCard(
          height: 52.8.h,
          width: 66.w,
          borderRadius: 9.r,
          borderColor: ColorManager.transparent,
          backgroundColor: backGroundColor,
          borderWidth: 0,
          boxShadow: [
            BoxShadow(
              color: ColorManager.transparent,
              blurRadius: 0,
              offset: Offset(0, 0.w),
            ),
          ],
          child: Image.asset(image),
        ),
        SizedBox(height: 3.h),
        Text(
          hours, style: TextStyleExtension.black20W600),
        Text(
          label, style: TextStyleExtension.black14Normal),
      ],
    );
  }

  Widget _buildProfileOptionItem() {
    return CustomAppCard(
      width: 343.w,
      height: 145.h,
      backgroundColor: ColorManager.primaryLight,
      borderRadius: 31.r,
      borderColor: ColorManager.transparent,
      boxShadow: [BoxShadow(color: ColorManager.transparent)],
      child: Padding(
        padding: EdgeInsets.only(right: 20.w, top: 15.h, left: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            AutoSizeText(
              'معلومات الحساب',
              style: TextStyleExtension.black16Medium,
            ),
            Divider(color: ColorManager.lightGrey),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomAppCard(
                  height: 32.8.h,
                  width: 63.w,
                  borderRadius: 12.r,
                  borderColor: ColorManager.transparent,
                  backgroundColor: ColorManager.primary,
                  borderWidth: 0,
                  boxShadow: [
                    BoxShadow(
                      color: ColorManager.transparent,
                      blurRadius: 0,
                      offset: Offset(0, 0.w),
                    ),
                  ],
                  child: Center(
                    child: Text(
                      '\$50',
                      style: TextStyleExtension.primaryDark20Medium,
                    ),
                  ),
                ),
                AppRichText(
                  textAlign: TextAlign.end,
                  text: " السعر الافتراضي بالساعة\n",
                  textStyle: TextStyleExtension.black16Medium,
                  clickableText: 'يُستخدم عند إنشاء مشروع جديد',
                  clickTextStyle: TextStyleExtension.textSecondary16Medium,
                ),
              ],
            ),
            Divider(color: ColorManager.lightGrey),
            AppRichText(
              textAlign: TextAlign.end,
              text: " عضو منذ\n",
              textStyle: TextStyleExtension.black16Medium,
              clickableText: 'تاريخ إنشاء الحساب',
              clickTextStyle: TextStyleExtension.textSecondary16Medium,
            ),
          ],
        ),
      ),
    );
  }
}
