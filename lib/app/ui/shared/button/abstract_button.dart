import 'package:flutter/material.dart';
import 'package:app_apprecio/app/ui/shared/button/button_primary.dart';

abstract class AbstractButton extends StatelessWidget {
  const AbstractButton({
    this.onPressed,
    this.title,
  });

  final Function()? onPressed;
  final Widget? title;

  const factory AbstractButton.primary({
    Function()? onPressed,
    Widget? title,
  }) = ButtonPrimary;
}
