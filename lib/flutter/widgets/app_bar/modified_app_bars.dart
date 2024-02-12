import 'package:flutter/material.dart';

class MyAppBar1 extends AppBar {
  final Widget? leading;
  final bool automaticallyImplyLeading;
  final Widget? title;
  final List<Widget>? actions;
  final Widget? flexibleSpace;
  final PreferredSizeWidget? bottom;
  final double? elevation;
  final double? scrolledUnderElevation;
  final Color? shadowColor;
  final Color? surfaceTintColor;
  final ShapeBorder? shape;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final IconThemeData? iconTheme;
  final IconThemeData? actionsIconTheme;
  final bool primary;
  final bool? centerTitle;
  final bool excludeHeaderSemantics;
  final double? titleSpacing;
  final double? toolbarHeight;
  final double? leadingWidth;
  final TextStyle? toolbarTextStyle;
  final TextStyle? titleTextStyle;
  final bool forceMaterialTransparency;
  final Clip? clipBehavior;

  MyAppBar1({
    Key? key,
    this.leading,
    this.automaticallyImplyLeading = true,
    this.title,
    this.actions,
    this.flexibleSpace,
    this.bottom,
    this.elevation,
    this.scrolledUnderElevation,
    this.shadowColor,
    this.surfaceTintColor,
    this.shape,
    this.backgroundColor,
    this.foregroundColor,
    this.iconTheme,
    this.actionsIconTheme,
    this.primary = true,
    this.centerTitle,
    this.excludeHeaderSemantics = false,
    this.titleSpacing,
    this.toolbarHeight,
    this.leadingWidth,
    this.toolbarTextStyle,
    this.titleTextStyle,
    this.forceMaterialTransparency = false,
    this.clipBehavior,
  }) : super(
          key: key,
          leading: leading,
          automaticallyImplyLeading: automaticallyImplyLeading,
          title: title,
          actions: actions,
          flexibleSpace: flexibleSpace,
          bottom: bottom,
          elevation: elevation,
          scrolledUnderElevation: scrolledUnderElevation,
          shadowColor: shadowColor,
          surfaceTintColor: surfaceTintColor,
          shape: shape,
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          iconTheme: iconTheme,
          actionsIconTheme: actionsIconTheme,
          primary: primary,
          centerTitle: centerTitle,
          excludeHeaderSemantics: excludeHeaderSemantics,
          titleSpacing: titleSpacing,
          toolbarHeight: toolbarHeight,
          leadingWidth: leadingWidth,
          toolbarTextStyle: toolbarTextStyle,
          titleTextStyle: titleTextStyle,
          forceMaterialTransparency: forceMaterialTransparency,
          clipBehavior: clipBehavior,
        );
}

class MyAppBar2 extends AppBar {
  final VoidCallback? onBackPressed;
  final Widget? title;
  final List<Widget>? actions;
  final BuildContext appBarContext;

  MyAppBar2({
    Key? key,
    this.onBackPressed,
    this.title,
    this.actions,
    required this.appBarContext,
  }) : super(
          key: key,
          leading: IconButton(
            onPressed: onBackPressed ??
                () {
                  Navigator.of(appBarContext).pop();
                },
            icon: const Icon(
              Icons.arrow_back_ios,
            ),
          ),
          title: title,
          actions: actions,
          centerTitle: true,
        );
}
