import 'package:flutter/material.dart';
import 'package:app_apprecio/app/ui/shared/button/abstract_button.dart';
import 'package:app_apprecio/app/ui/theme/app_color.dart';

class ButtonPrimary extends AbstractButton {
  const ButtonPrimary({
    Function()? onPressed,
    Widget? title,
  }) : super(
          onPressed: onPressed,
          title: title,
        );

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: MaterialButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          minWidth: 250,
          elevation: 5.0,
          height: 48.0,
          color: UIColors.redButton,
          onPressed: onPressed,
          child: title,
        ),
      );
}
