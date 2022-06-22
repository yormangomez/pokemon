import 'package:flutter/material.dart';
import 'package:app_apprecio/app/ui/shared/UILayout/paddings_shared.dart';
import 'package:app_apprecio/app/ui/shared/text/abstract_text.dart';

class TextTitle extends AbstractText {
  const TextTitle({String? title, Color? textColor, double? textDouble, TextAlign? textAlign})
      : super(title: title, textColor: textColor, textDouble: textDouble, textAlign: textAlign);

  @override
  Widget build(BuildContext context) => Padding(
        padding: UIPadding.padding_8,
        child: Text(
          title!,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: textDouble ?? 28.0,
            color: textColor ?? Colors.black,
          ),
          textAlign: textAlign ?? TextAlign.justify,
        ),
      );
}
