import 'package:flutter/material.dart';
import 'package:app_apprecio/app/ui/shared/button/abstract_button.dart';
import 'package:app_apprecio/app/ui/theme/app_color.dart';

class ButtonPrimary extends AbstractButton {
  const ButtonPrimary({
    Function()? onPressed,
    Widget? title,
    required Color colorButtom,
  }) : super(
          onPressed: onPressed,
          title: title,
          colorButtom: colorButtom,
        );

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: MaterialButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          minWidth: 241,
          elevation: 5.0,
          height: 64.0,
          color: colorButtom,
          onPressed: onPressed,
          child: title,
        ),
      );
}
