import 'package:flutter/material.dart';
import 'package:taskora/core/config/constants/color_manager.dart';

class CircularProgressCard extends StatelessWidget {
  const CircularProgressCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CircularProgressIndicator(
          backgroundColor: ColorManager.lightGrey.withOpacity(0.7),
          color: ColorManager.circularProgress.withOpacity(0.7),
        ),
      ],
    );
  }
}
