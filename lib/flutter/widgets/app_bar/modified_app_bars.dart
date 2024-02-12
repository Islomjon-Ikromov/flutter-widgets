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
  final Widget title;
  final List<Widget>? actions;
  final BuildContext appBarContext;

  MyAppBar2({
    Key? key,
    this.onBackPressed,
    required this.title,
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

class MyAppBar3 extends AppBar {
  final VoidCallback onDriverPressed;
  final VoidCallback onSearchPressed;

  final String screenName;

  MyAppBar3({
    Key? key,
    required this.screenName,
    required this.onDriverPressed,
    required this.onSearchPressed,
  }) : super(
          key: key,
          leading: IconButton(
            onPressed: onDriverPressed,
            icon: const Icon(
              Icons.menu,
              color: Colors.blue,
            ),
          ),
          title: Text(
            screenName,
            style: const TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.w600,
            ),
          ),
          actions: [
            IconButton(
              onPressed: onSearchPressed,
              icon: const Icon(
                Icons.search,
                color: Colors.blue,
              ),
            ),
          ],
          centerTitle: true,
        );
}

class MyAppBar4 extends StatelessWidget implements PreferredSizeWidget {
  final Color? backgroundColor;
  final double height;
  final String title;
  final VoidCallback onDriverPressed;
  final VoidCallback onSearchPressed;

  const MyAppBar4({
    Key? key,
    required this.title,
    this.backgroundColor,
    required this.onSearchPressed,
    required this.onDriverPressed,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.blue,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      child: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: IconButton(
                padding: EdgeInsets.zero,
                onPressed: onDriverPressed,
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 25,
              ),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: IconButton(
                padding: EdgeInsets.zero,
                alignment: Alignment.center,
                onPressed: onSearchPressed,
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
