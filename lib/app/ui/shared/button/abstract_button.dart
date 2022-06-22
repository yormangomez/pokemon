import 'package:flutter/material.dart';
import 'package:app_apprecio/app/ui/shared/button/button_primary.dart';

abstract class AbstractButton extends StatelessWidget {
  const AbstractButton({
    this.onPressed,
    this.title,
    required this.colorButtom,
  });

  final Function()? onPressed;
  final Widget? title;
  final Color colorButtom;

  const factory AbstractButton.primary({
    Function()? onPressed,
    Widget? title,
    required Color colorButtom,
  }) = ButtonPrimary;
}
