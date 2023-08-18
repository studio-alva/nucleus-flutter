import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../config/config.dart';

class AppBarPrimary extends StatelessWidget implements PreferredSizeWidget {
  final Color? backgroundColor;
  final double? heightAppBar;
  final String? text;
  final bool disableBack;
  final Widget? leading;
  final double? elevation;
  final List<Widget>? actions;
  final Function()? onTapBack;
  final TextStyle? textStyle;
  final Color? iconColor;
  const AppBarPrimary({
    super.key,
    this.backgroundColor,
    this.heightAppBar,
    this.text,
    this.disableBack = false,
    this.leading,
    this.elevation,
    this.actions,
    this.onTapBack,
    this.textStyle,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      automaticallyImplyLeading: false,
      title: Text(
        text ?? "",
        style: textStyle ??
            AssetStyles.labelLgRegular.copyWith(
              fontWeight: FontWeight.w500,
            ),
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
                    backScreenUntil();
                  }
                },
                icon: SvgPicture.asset(
                  AssetPaths.iconBack,
                  color: iconColor ?? AssetColors.inkDarkest,
                ),
              )
          : null,
      actions: actions ?? [const SizedBox()],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(heightAppBar ?? 70);
}
