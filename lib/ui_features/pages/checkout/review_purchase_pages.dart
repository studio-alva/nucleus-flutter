import 'package:flutter/material.dart';
import '../../../config/config.dart';
import '../../../ui_features/widgets/appbar/appbar_primary.dart';
import '../../../ui_features/widgets/button_primary.dart';
import '../../../ui_features/widgets/cart/checkout_item.dart';
import '../../../ui_features/widgets/text_button.dart';

import '../../widgets/cart/descriotion_one_row.dart';

class ReviewPurchasePages extends StatelessWidget {
  const ReviewPurchasePages({super.key});
  static const String reviewPurchasePages = "reviewPurchasePages";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarPrimary(),
      body: Container(
        padding: const EdgeInsets.only(left: 20, bottom: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Review Purchase",
                      style: AssetStyles.h1,
                    ),
                    verticalSpace(
                      30,
                    ),
                    CheckOutItem(
                      onTap: () {},
                      title: "Title",
                      subTitle: "Caption",
                    ),
                    verticalSpace(
                      30,
                    ),
                    CheckOutItem(
                      onTap: () {},
                      title: "Title",
                      subTitle: "Caption",
                    ),
                    verticalSpace(30),
                    const Divider(
                      thickness: 1,
                    ),
                    verticalSpace(
                      25,
                    ),
                    TextButtonCustom(text: "Have a gift code?", onTap: () {}),
                    verticalSpace(
                      25,
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    verticalSpace(
                      25,
                    ),
                    DescriptionOneRow(
                      left: "Subtotal",
                      right: "\$97.00",
                    ),
                    verticalSpace(20),
                    DescriptionOneRow(
                      left: "Shipping & Handling",
                      right: "\$19.99",
                    ),
                    verticalSpace(20),
                    DescriptionOneRow(
                      left: "Tax",
                      right: "\$4.00",
                    ),
                    verticalSpace(20),
                    DescriptionOneRow(
                      left: "Total",
                      right: "\$120.00",
                      isBold: true,
                      fontSize: 18,
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "By clicking “Purchase”, you accept the",
                  style: AssetStyles.labelMdSmReg1,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("terms."),
                ),
              ],
            ),
            ButtonPrimary(
              height: 40,
              onTap: () {},
              text: "Purchase",
            ),
          ],
        ),
      ),
    );
  }
}
