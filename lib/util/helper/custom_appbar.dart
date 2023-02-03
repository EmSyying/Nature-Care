import 'package:flutter/material.dart';
import 'package:nature_care/util/colors/app_colors.dart';

customAppBar({
  required final String? title,
  required BuildContext? context,
  final Widget? leading,
  final List<Widget>? action,
  final double? elevated,
  final Color? backgroundColor,
  final bool? centerTitle,
  final bool? isLogo,
}) {
  return AppBar(
    title: Text(
      title ?? '',
      style: Theme.of(context!).textTheme.displayLarge,
    ),
    leading: leading,
    elevation: elevated,
    backgroundColor: backgroundColor ?? AppColors.primaryColor,
    centerTitle: centerTitle,
    actions: action,
  );
}
