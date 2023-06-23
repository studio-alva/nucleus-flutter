import 'package:flutter/material.dart';
import '../../../config/config.dart';

class CoveragesItem extends StatelessWidget {
  CoveragesItem({
    super.key,
    required this.data,
  });

  final Map<String, String> data;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
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
                          Text(
                            data["organization"]!,
                            style: AssetStyles.labelMdSmReg1,
                          ),
                        ],
                      ),
                      verticalSpace(10),
                      Container(
                        margin: const EdgeInsets.only(right: 5),
                        child: Text(
                          data["title"]!,
                          style: AssetStyles.h2i,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                    ],
                  ),
                ),
              ),
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
              Text(data["time"]!),
              InkWell(
                onTap: () {},
                child: Container(
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
                ),
              )
            ],
          ),
          (data["desc"] != '')
              ? Column(
                  children: [
                    verticalSpace(20),
                    Container(
                      child: Text(
                        data["desc"]!,
                        style: AssetStyles.labelMdSmReg1,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                )
              : Container(),
          verticalSpace(10),
          const Divider(
            height: 0.5,
            thickness: 1,
            color: Colors.black,
          ),
          verticalSpace(40),
        ],
      ),
    );
  }
}
