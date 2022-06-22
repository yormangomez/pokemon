import 'package:flutter/material.dart';
import 'package:app_apprecio/app/ui/shared/UILayout/layouts_shared.dart';

/// Different spacings based on [UILayout] sizes.

class UISpacing {
  static const Widget spacingW4 = SizedBox(width: UILayout.xsmall);
  static const Widget spacingH4 = SizedBox(height: UILayout.xsmall);

  static const Widget spacingW8 = SizedBox(width: UILayout.small);
  static const Widget spacingH8 = SizedBox(height: UILayout.small);

  static const Widget spacingW16 = SizedBox(width: UILayout.medium);
  static const Widget spacingH16 = SizedBox(height: UILayout.medium);

  static const Widget spacingW24 = SizedBox(width: UILayout.large);
  static const Widget spacingH24 = SizedBox(height: UILayout.large);

  static const Widget spacingW32 = SizedBox(width: UILayout.xlarge);
  static const Widget spacingH32 = SizedBox(height: UILayout.xlarge);

  static const Widget spacingW40 = SizedBox(width: UILayout.xxlarge);
  static const Widget spacingH40 = SizedBox(height: UILayout.xxlarge);
}
