import 'package:flutter/material.dart';
import 'package:nucleus_ui_app/config/asset_colors.dart';
import 'package:nucleus_ui_app/config/asset_styles.dart';

class PrimaryChip extends StatefulWidget {
  const PrimaryChip({
    super.key,
    this.label,
  });
  final String? label;

  @override
  State<PrimaryChip> createState() => _PrimaryChipState();
}

class _PrimaryChipState extends State<PrimaryChip> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        isClicked = true;
        setState(() {});
        await Future.delayed(
          const Duration(milliseconds: 900),
        );
        isClicked = false;
        setState(() {});
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 900),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: !isClicked ? Colors.white : AssetColors.primaryLightest,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 0.5,
              blurRadius: 2,
            ),
          ],
        ),
        child: Text(
          widget.label ?? "",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: AssetStyles.labelMdRegular.copyWith(
            fontWeight: FontWeight.normal,
            color: isClicked ? AssetColors.primaryBase : AssetColors.inkDarkest,
          ),
        ),
      ),
    );
  }
}
