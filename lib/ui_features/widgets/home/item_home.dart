import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../ui_features/model/items_model.dart';
import '../../../config/config.dart';

class HomeItem extends StatelessWidget {
  const HomeItem({
    super.key,
    required this.item,
  });

  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: AssetColors.skyWhite,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
            width: 1, color: AssetColors.inkDarkest.withOpacity(0.1)),
      ),
      margin: const EdgeInsets.all(6),
      child: Material(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(4),
          topRight: Radius.circular(4),
        ),
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          onTap: () {},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4),
                      topRight: Radius.circular(4),
                    ),
                    image: DecorationImage(
                      image: NetworkImage(item.images),
                      fit: BoxFit.cover,
                      onError: (exception, stackTrace) =>
                          SvgPicture.asset(AssetPaths.iconNoImages),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                child: Text(
                  item.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AssetStyles.labelTinyReguler,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
