import 'package:flutter/material.dart';
import '../../../config/config.dart';

class CoveragesItem extends StatelessWidget {
  const CoveragesItem({
    super.key,
    required this.data,
  });

  final Map<String, String> data;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(data["icon"]!),
                          ),
                        ),
                      ),
                      horizontalSpace(10),
                      Flexible(
                        child: Text(
                          data["organization"]!,
                          style: AssetStyles.labelSmReguler,
                        ),
                      ),
                    ],
                  ),
                  verticalSpace(10),
                  Container(
                    margin: const EdgeInsets.only(right: 5),
                    child: Text(
                      data["title"]!,
                      style: AssetStyles.labelLgRegular.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
            horizontalSpace(25),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(data["imgThumb"]!),
                ),
              ),
            ),
          ],
        ),
        verticalSpace(20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              data["time"]!,
              style: AssetStyles.labelTinyReguler.copyWith(
                color: AssetColors.inkLight,
              ),
            ),
            InkWell(
              onTap: () {},
              child: Row(
                children: [1, 2, 3]
                    .map((e) => Container(
                          margin: const EdgeInsets.only(right: 5),
                          width: 4,
                          height: 4,
                          decoration: const BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                          ),
                        ))
                    .toList(),
              ),
            )
          ],
        ),
        (data["desc"] != '')
            ? Column(
                children: [
                  verticalSpace(20),
                  Text(
                    data["desc"]!,
                    style: AssetStyles.labelSmReguler,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              )
            : Container(),
        verticalSpace(24),
        const Divider(
          height: 0.5,
        ),
        verticalSpace(24),
      ],
    );
  }
}
