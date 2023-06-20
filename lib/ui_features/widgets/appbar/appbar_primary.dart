import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nucleus_ui_app/config/config.dart';
import 'package:nucleus_ui_app/config/asset_colors.dart';
import 'package:nucleus_ui_app/config/asset_paths.dart';

class AppBarPrimary extends StatelessWidget implements PreferredSizeWidget {
  final Color? backgroundColor;
  final double? heightAppBar;
  final String? text;
  final bool disableBack;
  final Widget? leading;
  final double? elevation;
  final List<Widget>? actions;
  final Function()? onTapBack;
  AppBarPrimary({
    super.key,
    this.backgroundColor,
    this.heightAppBar,
    this.text,
    this.disableBack = false,
    this.leading,
    this.elevation,
    this.actions,
    this.onTapBack,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      automaticallyImplyLeading: false,
      title: Text(
        text ?? "",
        style: AssetStyles.h3.copyWith(fontWeight: FontWeight.w500),
      ),
      backgroundColor: backgroundColor ?? Colors.transparent,
      bottomOpacity: 0.0,
      elevation: 0,
      leading: !disableBack
          ? leading ??
              IconButton(
                splashRadius: 15,
                onPressed: () {
                  if (onTapBack != null) {
                    onTapBack!();
                  } else {
                    backScreen();
                  }
                },
                icon: SvgPicture.asset(
                  AssetPaths.iconBack,
                ),
              )
          : null,
      actions: actions ?? [const SizedBox()],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(heightAppBar ?? 70);
}
