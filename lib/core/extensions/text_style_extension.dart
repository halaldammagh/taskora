import 'package:flutter/material.dart';
import 'package:taskora/core/config/constants/color_manager.dart';

class TextStyleExtension {
  static TextStyle onBoardingTitle = TextStyle(
    fontFamily: 'Tajawal',
    fontWeight: FontWeight.w500,
    fontSize: 20,
    color: ColorManager.primary,
  );
  static TextStyle black20Medium = TextStyle(
    fontFamily: 'Tajawal',
    fontWeight: FontWeight.w500,
    fontSize: 20,
    color: ColorManager.black,
  );
  static TextStyle primaryDark20Medium = TextStyle(
    fontFamily: 'Tajawal',
    fontWeight: FontWeight.w500,
    fontSize: 20,
    color: ColorManager.primaryDark,
  );
  static TextStyle black16Medium = TextStyle(
    fontFamily: 'Tajawal',
    fontWeight: FontWeight.w500,
    fontSize: 16,
    color: ColorManager.black,
  );
  static TextStyle black16Bold = TextStyle(
    fontFamily: 'Tajawal',
    fontWeight: FontWeight.bold,
    fontSize: 16,
    color: ColorManager.black,
  );
  static TextStyle textSecondary16Medium = TextStyle(
    fontFamily: 'Tajawal',
    fontWeight: FontWeight.w500,
    fontSize: 16,
    color: ColorManager.textSecondary,
  );
  static TextStyle status13Medium = TextStyle(
    fontFamily: 'Tajawal',
    fontWeight: FontWeight.w500,
    fontSize: 15,
    color: ColorManager.highText,
  );
}
