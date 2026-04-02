import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/config/constants/color_manager.dart';

typedef OnChanged = void Function(String)?;
typedef OnValidator = String? Function(String?)?;

class CustomTextFormField extends StatelessWidget {
  Color? borderSideColor;
  Color? fillColor;
  bool? filled;
  String? hintText;
  TextStyle? hintStyle;
  String? labelText;
  TextStyle? labelStyle;
  TextStyle? errorStyle;
  Widget? prefixIcon;
  Widget? suffixIcon;
  int? maxLines;
  OnChanged onChanged;
  TextEditingController? controller;
  OnValidator validator;
  TextInputType? keyboardType;
  String obscuringCharacter;
  bool obscureText;
  double verticalPadding;
  double horizontalPadding;
  TextStyle? style;
  Color? cursorColor;

  CustomTextFormField({
    super.key,
    this.hintText,
    this.hintStyle,
    this.labelText,
    this.labelStyle,
    this.fillColor,
    this.filled,
    this.borderSideColor,
    this.prefixIcon,
    this.suffixIcon,
    this.maxLines,
    this.controller,
    this.onChanged,
    this.validator,
    this.obscureText = false,
    this.obscuringCharacter = '.',
    this.keyboardType,
    this.errorStyle,
    this.verticalPadding = 16,
    this.horizontalPadding = 15,
    this.style,
    this.cursorColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines ?? 1,
      controller: controller,
      onChanged: onChanged,
      validator: validator,
      obscureText: obscureText,
      obscuringCharacter: obscuringCharacter,
      keyboardType: keyboardType,
      style: style,
      cursorColor: cursorColor,
      cursorHeight: 20.h,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          vertical: verticalPadding.h,
          horizontal: horizontalPadding.w,
        ),
        filled: filled,
        fillColor: fillColor,
        errorMaxLines: 2,
        errorStyle: errorStyle,
        enabledBorder: builtDecorationBorder(
          borderColor: borderSideColor ?? ColorManager.transparent,
        ),
        focusedBorder: builtDecorationBorder(
          borderColor: borderSideColor ?? ColorManager.transparent,
        ),
        errorBorder: builtDecorationBorder(borderColor: ColorManager.error),
        focusedErrorBorder: builtDecorationBorder(
          borderColor: ColorManager.error,
        ),
        hintText: hintText,
        hintStyle: hintStyle,
        labelText: labelText,
        labelStyle: labelStyle,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),
    );
  }

  OutlineInputBorder builtDecorationBorder({required Color borderColor}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(width: 2, color: borderColor),
    );
  }
}
