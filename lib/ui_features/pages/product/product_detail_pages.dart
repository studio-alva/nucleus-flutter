import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../../config/config.dart';
import '../../../ui_features/model/products_model.dart';
import '../../../ui_features/model/sort_model.dart';
import '../../../ui_features/widgets/appbar/appbar_primary.dart';
import '../../../ui_features/widgets/button_primary.dart';

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
    final Product product = Product(
      namaProduk: "Nike Air Zoom Structure 23",
      hargaProduk: "190,00",
      pilihanGambar: [
        'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
        'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
        'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
        'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
        'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
        'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80',
      ],
      pilihanWarna: const [
        Color(0XFFFF7A00),
        Color(0XFF1DA1F2),
        Color(0XFFFF5247),
      ],
      pilihanUkuran: [
        "M 4 / W 5.5",
        "M 4.5 / W 6",
        "M 5 / W 6.5",
      ],
      deskripsiProduk:
          "A favourite returns. Made for the runner looking for a shoe they can wear daily the Nike Air Zoom Quest Structure 23 keeps\n\n",
    );

    final List<Widget> imageSliders = product.pilihanGambar
        .map((item) => Image(
              image: NetworkImage(item),
              fit: BoxFit.cover,
            ))
        .toList();

    final List<SortModel> sizes = List.generate(
      product.pilihanUkuran.length,
      (index) => SortModel(
          name: product.pilihanUkuran[index],
          status: index == 1 ? true : false),
    );

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
                          imgList: product.pilihanGambar,
                          controller: controller,
                          current: current,
                        ),
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
                      Text(
                        product.namaProduk,
                        style: AssetStyles.t2,
                      ),
                      verticalSpace(10),
                      Text(
                        "\$ ${product.hargaProduk}",
                        style: AssetStyles.labelMdRegular.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      verticalSpace(20),
                      const Divider(),
                      verticalSpace(10),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Color",
                              style: AssetStyles.labelMdRegular.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const TextSpan(
                              text: " Gray",
                              style: AssetStyles.labelMdRegular,
                            ),
                          ],
                        ),
                      ),
                      verticalSpace(20),
                      Row(
                        children: [
                          ...product.pilihanWarna.map(
                            (e) => Container(
                              margin: const EdgeInsets.only(
                                right: 10,
                              ),
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: e,
                              ),
                            ),
                          ),
                        ],
                      ),
                      verticalSpace(20),
                      Text(
                        "Size",
                        style: AssetStyles.labelMdRegular.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      verticalSpace(20),
                      SizedBox(
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
                      SizedBox(
                        child: Text(
                          product.deskripsiProduk,
                          style: AssetStyles.labelMdRegular,
                        ),
                      ),
                      verticalSpace(30),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
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
                width: screenWidth(context) * 0.9,
                color: AssetColors.inkDarkest,
                text: "Add To Cart",
              ),
            ),
          )
        ],
      ),
    );
  }
}
