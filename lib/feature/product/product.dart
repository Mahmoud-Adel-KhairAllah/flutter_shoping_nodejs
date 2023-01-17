import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_shoping_node_expres_sockit/feature/product/controller/product_details_controller.dart';
import 'package:flutter_shoping_node_expres_sockit/feature/product/product_card/product_card.dart';
import 'package:flutter_shoping_node_expres_sockit/foundation/theme/appColor.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class Product extends StatelessWidget {
  Product({super.key});
  final ProductDetailsController _detailsController =
      Get.find<ProductDetailsController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(),
        body: Obx((() => _detailsController.isLosding.value
            ? const Center(
                child: CircularProgressIndicator(
                color: AppColor.accentColor,
              ))
            :SingleChildScrollView(
              child: Wrap(
                        children: _detailsController.productList
                            .map((e) => ProductCard(
                                  productDetailsItem: e,
                                ))
                            .toList()),
            )
              ))
              );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        onPressed: () {},
      ),
      title: Column(
        children: [
          Text(
            'Men Cloths',
            style: styleText(
                color: Colors.black, size: 17, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            '2225 items',
            style: styleText(
                color: Colors.black, size: 13, fontWeight: FontWeight.w200),
          )
        ],
      ),
      centerTitle: false,
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.black,
              size: 28,
            )),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_outline,
              color: Colors.black,
              size: 28,
            )),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
              size: 28,
            )),
      ],
    );
  }

  TextStyle styleText({Color? color, double? size, FontWeight? fontWeight}) {
    return TextStyle(color: color, fontSize: size, fontWeight: fontWeight);
  }
}
