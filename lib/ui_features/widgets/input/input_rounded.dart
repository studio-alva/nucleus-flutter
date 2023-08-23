import 'package:flutter/material.dart';
import '../../../config/asset_colors.dart';

class InputVerification extends StatefulWidget {
  final bool? isActive;
  final EdgeInsetsGeometry? edgeInsetsGeometry;
  final TextEditingController? controller;
  final FocusNode? focusNode;

  const InputVerification({
    super.key,
    this.isActive = false,
    this.edgeInsetsGeometry,
    this.controller,
    this.focusNode,
  });

  @override
  State<InputVerification> createState() => _InputVerificationState();
}

class _InputVerificationState extends State<InputVerification> {
  FocusNode? focusNode;

  @override
  void initState() {
    // TODO: implement initState
    focusNode = widget.focusNode;
    if (focusNode != null) {
      focusNode?.addListener(() {
        setState(() {});
      });
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.edgeInsetsGeometry ?? EdgeInsets.zero,
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: focusNode != null
            ? Border.all(
                color: focusNode!.hasFocus
                    ? AssetColors.primaryBase
                    : AssetColors.inkDarkest,
              )
            : null,
      ),
      child: TextField(
        focusNode: focusNode,
        keyboardType: TextInputType.number,
        maxLength: 1,
        controller: widget.controller,
        textAlign: TextAlign.center,
        decoration: const InputDecoration(
          border: InputBorder.none,
          counterText: "",
        ),
      ),
    );
  }
}
