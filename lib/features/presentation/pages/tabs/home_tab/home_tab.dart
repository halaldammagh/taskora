import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/config/constants/color_manager.dart';
import '../../../../../core/config/widgets/app_status_badge.dart';
import '../../../../../core/extensions/text_style_extension.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  Widget _buildAppTaskListTile({
    required String title,
    required String secTitle,
    required String status,
    required Color slideColor,
  }) {
    return Container(
      width: 336.84.w,
      height: 65.16.h,
      decoration: BoxDecoration(
        color: ColorManager.primaryLight,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15.w),
            child: AppStatusBadge(text: status),
          ),
          //   SizedBox(width: 74.w,),
          Padding(
            padding: EdgeInsets.only(left: 65.w, top: 15.h, right: 9.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                AutoSizeText(
                  title.trim().split(RegExp(r'\s+')).take(3).join(' '),
                  style: TextStyleExtension.black16Medium,
                ),
                AutoSizeText(
                  secTitle,
                  style: TextStyleExtension.textSecondary16Medium,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Container(
              width: 15,
              decoration: BoxDecoration(
                color: slideColor ?? ColorManager.accent,
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
