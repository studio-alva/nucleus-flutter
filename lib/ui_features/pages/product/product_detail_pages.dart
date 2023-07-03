import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:nucleus_ui_app/config/config.dart';
import 'package:nucleus_ui_app/ui_features/model/sort_model.dart';
import 'package:nucleus_ui_app/ui_features/widgets/appbar/appbar_primary.dart';
import 'package:nucleus_ui_app/ui_features/widgets/button_primary.dart';

import '../../widgets/product/indicator_image_product.dart';
import '../../widgets/product/size_item_list.dart';

class ProductDetailPages extends StatefulWidget {
  const ProductDetailPages({super.key});
  static const String productDetailPages = "productDetailPages";

  @override
  State<ProductDetailPages> createState() => _ProductDetailPagesState();
}

class _ProductDetailPagesState extends State<ProductDetailPages> {
  int current = 0;
  final CarouselController controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
      'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
      'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
      'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
      'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
      'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
    ];

    final List<Widget> imageSliders = imgList
        .map((item) => Container(
              child: Image(
                image: NetworkImage(item),
                fit: BoxFit.cover,
              ),
            ))
        .toList();

    final List<SortModel> sizes = [
      SortModel(
        name: "M 4 / W 5.5",
        status: false,
      ),
      SortModel(
        name: "M 4.5 / W 6",
        status: true,
      ),
      SortModel(
        name: "M 5 / W 6.5",
        status: false,
      ),
    ];

    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  width: screenWidth(context),
                  height: screenHeight(context) * 0.4,
                  child: Stack(
                    children: [
                      SizedBox(
                        width: screenWidth(context),
                        height: screenHeight(context) * 0.4,
                        child: CarouselSlider(
                          options: CarouselOptions(
                            disableCenter: true,
                            viewportFraction: 1.0,
                            enableInfiniteScroll: false,
                            onPageChanged: (index, reason) {
                              setState(
                                () {
                                  current = index;
                                },
                              );
                            },
                          ),
                          carouselController: controller,
                          items: imageSliders,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: IndicatorImageProduct(
                            imgList: imgList,
                            controller: controller,
                            current: current),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Nike Air Zoom Quest Structure 23",
                        style: AssetStyles.h1,
                      ),
                      verticalSpace(20),
                      Text(
                        "\$ 190,00",
                        style: AssetStyles.labelMdMdReg.copyWith(
                          color: AssetColors.inkDarkest,
                        ),
                      ),
                      verticalSpace(20),
                      const Divider(
                        thickness: 2,
                      ),
                      verticalSpace(20),
                      Row(
                        children: [
                          Text(
                            "Color",
                            style: AssetStyles.labelMdMdReg.copyWith(
                              fontWeight: FontWeight.bold,
                              color: AssetColors.inkDarkest,
                            ),
                          ),
                          horizontalSpace(5),
                          Text(
                            "Grey",
                            style: AssetStyles.labelMdMdReg.copyWith(
                              fontWeight: FontWeight.normal,
                              color: AssetColors.inkDarkest,
                            ),
                          ),
                        ],
                      ),
                      verticalSpace(20),
                      Row(
                        children: [
                          ...[1, 2, 3].map((e) => Container(
                                margin: const EdgeInsets.only(
                                  right: 10,
                                ),
                                width: 25,
                                height: 25,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.amber,
                                ),
                              ))
                        ],
                      ),
                      verticalSpace(20),
                      Text(
                        "Size",
                        style: AssetStyles.labelMdMdReg.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AssetColors.inkDarkest,
                        ),
                      ),
                      verticalSpace(20),
                      Container(
                        height: 50,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            ...sizes.map(
                              (e) => SizeItemList(
                                data: e,
                              ),
                            ),
                          ],
                        ),
                      ),
                      verticalSpace(20),
                      const SizedBox(
                        child: Text(
                            "A favourite returns. Made for the runner looking for a shoe they can wear daily the Nike Air Zoom Quest Structure 23 keeps "),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 100,
            child: AppBarPrimary(),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              margin: const EdgeInsets.only(bottom: 30),
              height: 50,
              child: ButtonPrimary(
                  onTap: () {
                    print("OK");
                  },
                  text: "Add To Cart"),
            ),
          )
        ],
      ),
    );
  }
}
