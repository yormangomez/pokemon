import 'package:flutter/material.dart';
import 'package:app_apprecio/app/ui/shared/text/text_title.dart';
import 'package:app_apprecio/app/ui/shared/text/description_text.dart';

abstract class AbstractText extends StatelessWidget {
  const AbstractText({this.title, this.titleText, this.textColor, this.textDouble, this.textAlign});

  final String? title;
  final Color? textColor;
  final double? textDouble;
  final String? titleText;
  final TextAlign? textAlign;

  const factory AbstractText.title({
    String? title,
    Color? textColor,
    double? textDouble,
    TextAlign? textAlign,
  }) = TextTitle;

  const factory AbstractText.description({
    String? title,
    String? titleText,
    Color? textColor,
    TextAlign? textAlign,
  }) = DescriptionText;
}
