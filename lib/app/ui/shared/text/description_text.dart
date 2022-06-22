import 'package:flutter/material.dart';
import 'package:app_apprecio/app/ui/shared/UILayout/paddings_shared.dart';
import 'package:app_apprecio/app/ui/shared/text/abstract_text.dart';
import 'package:app_apprecio/app/ui/theme/app_color.dart';

class DescriptionText extends AbstractText {
  const DescriptionText({
    String? titleText,
    String? title,
    Color? textColor,
    TextAlign? textAlign,
  }) : super(titleText: titleText, title: title, textColor: textColor, textAlign: textAlign);

  @override
  Widget build(BuildContext context) => Padding(
        padding: UIPadding.paddingH8,
        child: Text.rich(
          TextSpan(
            children: <TextSpan>[
              TextSpan(
                  text: titleText,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  )),
              TextSpan(
                  text: title,
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                  )),
            ],
          ),
          textAlign: textAlign ?? TextAlign.justify,
        ),
      );
}
