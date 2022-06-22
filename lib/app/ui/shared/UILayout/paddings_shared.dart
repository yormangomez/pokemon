import 'package:flutter/material.dart';
import 'package:app_apprecio/app/ui/shared/UILayout/layouts_shared.dart';

/// Different types of paddings based on [UILayout] sizes.
class UIPadding {
  static const EdgeInsetsGeometry paddingH4 = EdgeInsets.symmetric(horizontal: UILayout.xsmall);
  static const EdgeInsetsGeometry paddingV4 = EdgeInsets.symmetric(vertical: UILayout.xsmall);
  static const EdgeInsetsGeometry padding_4 = EdgeInsets.all(UILayout.small);

  static const EdgeInsetsGeometry paddingH8 = EdgeInsets.symmetric(horizontal: UILayout.small);
  static const EdgeInsetsGeometry paddingV8 = EdgeInsets.symmetric(vertical: UILayout.small);
  static const EdgeInsetsGeometry padding_8 = EdgeInsets.all(UILayout.small);

  static const EdgeInsetsGeometry paddingH16 = EdgeInsets.symmetric(horizontal: UILayout.medium);
  static const EdgeInsetsGeometry paddingV16 = EdgeInsets.symmetric(vertical: UILayout.medium);
  static const EdgeInsetsGeometry padding_16 = EdgeInsets.all(UILayout.medium);

  static const EdgeInsetsGeometry paddingH24 = EdgeInsets.symmetric(horizontal: UILayout.large);
  static const EdgeInsetsGeometry paddingV24 = EdgeInsets.symmetric(vertical: UILayout.large);
  static const EdgeInsetsGeometry padding_24 = EdgeInsets.all(UILayout.large);

  static const EdgeInsetsGeometry paddingH32 = EdgeInsets.symmetric(horizontal: UILayout.xlarge);
  static const EdgeInsetsGeometry paddingV32 = EdgeInsets.symmetric(vertical: UILayout.xlarge);
  static const EdgeInsetsGeometry padding_32 = EdgeInsets.all(UILayout.xlarge);
}
