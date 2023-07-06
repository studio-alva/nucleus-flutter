import 'package:flutter/material.dart';
import '../../../config/asset_styles.dart';
import '../../../ui_features/model/categories_model.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.categories});

  final Categories categories;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Text(
          categories.category,
          style: AssetStyles.labelMdRegular,
        ),
      ),
    );
  }
}
