import 'package:flutter/material.dart';
import '../../../config/config.dart';
import '../../widgets/button_primary.dart';
import '../../widgets/text_button.dart';

class ConfirmationModalPages extends StatelessWidget {
  const ConfirmationModalPages({super.key});
  static const String confirmationModalPages = "confirmationModalPages";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) => const ModalConfirmationBody());
          },
          child: const Text("Show Modal"),
        ),
      ),
    );
  }
}

class ModalConfirmationBody extends StatelessWidget {
  const ModalConfirmationBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 40,
        horizontal: 20,
      ),
      height: screenHeight(context) * 0.2,
      decoration: const BoxDecoration(),
      child: Column(
        children: [
          const Text(
            "Remove Item ?",
            style: AssetStyles.h2,
          ),
          verticalSpace(20),
          Text(
            "Are you sure want to remove this item from your cart?",
            style: AssetStyles.h3.copyWith(
              fontWeight: FontWeight.normal,
            ),
            textAlign: TextAlign.center,
          ),

          verticalSpace(40),
          ButtonPrimary(
            onTap: () {},
            text: "Remove Item",
            height: 50,
          ),
          verticalSpace(20),
          TextButtonCustom(
            text: "Cancel",
            style: AssetStyles.labelMdMdReg.copyWith(
              color: AssetColors.inkDarkest,
            ),
            onTap: () {},
          ),
          // verticalSpace(20),
        ],
      ),
    );
  }
}
