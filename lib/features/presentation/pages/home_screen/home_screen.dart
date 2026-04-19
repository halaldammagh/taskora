import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/config/constants/color_manager.dart';
import 'package:taskora/core/config/constants/icon_path.dart';
import 'package:taskora/core/extensions/text_style_extension.dart';

import '../../../../core/config/widgets/CircularProgressCard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildCustomAppBar(),
      body: Column(children: [CircularProgressCard()]),
    );
  }

  }

  PreferredSizeWidget _buildCustomAppBar() {
    return AppBar(
      backgroundColor: ColorManager.white,
      surfaceTintColor: ColorManager.transparent,
      elevation: 0,
      // toolbarHeight: index != 3 ?120.h : kToolbarHeight,
      leadingWidth: double.infinity,
      leading: Padding(
        padding: EdgeInsets.only(left: 10.w),
        child: Row(
            spacing: 10.w,
            children: [
              InkWell(
                  onTap: () {},
                  child: Image.asset(IconPath.sliders)),
              InkWell(
                  onTap: () {},
                  child: Image.asset(IconPath.notification)),
            ]
        ),

      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 10.w),
          child: Text('مرحبا هديل', style: TextStyleExtension.black16Medium,),
        ),
        Padding(
          padding: EdgeInsets.only(right: 10.w),
          child: CircleAvatar(
            backgroundColor: ColorManager.white,
            child: Image.asset('assets/images/Ellipse 1336.png'),
          ),
        )

      ],
    );
  }


}
