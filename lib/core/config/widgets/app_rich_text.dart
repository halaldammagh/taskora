import 'package:flutter/material.dart';

class AppRichText extends StatelessWidget {
  final String text;
  final String clickableText;
  final VoidCallback? onTap;
  final Color? textColor;
  final Color? clickableTextColor;
  final double? fontSize;
  final TextStyle? textStyle;
  final TextStyle? clickTextStyle;
  final TextAlign textAlign;

  const AppRichText({
    super.key,
    required this.text,
    required this.clickableText,
    this.onTap,
    this.textColor,
    this.clickableTextColor,
    this.fontSize,
    this.textStyle,
    this.clickTextStyle,
    this.textAlign = TextAlign.start,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: textAlign,
      text: TextSpan(
        children: [
          TextSpan(text: text, style: textStyle),
          WidgetSpan(
            child: GestureDetector(
              onTap: onTap,
              child: Text(clickableText, style: clickTextStyle),
            ),
          ),
        ],
      ),
    );
  }
}
