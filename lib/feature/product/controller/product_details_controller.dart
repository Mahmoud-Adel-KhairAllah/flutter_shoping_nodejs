import 'dart:convert';
import 'dart:developer';

import 'package:flutter_shoping_node_expres_sockit/feature/product/model/product_details_model.dart';
import 'package:flutter_shoping_node_expres_sockit/service/network/network_handler/network_handler.dart';
import 'package:get/get.dart';

class ProductDetailsController extends GetxController {
  RxBool isLosding = false.obs;
  List<ProductDetailsItem> productList = [];

  getProductDetails() async {
    isLosding(true);
    var response = await NetworkHandler.get('product-details/getAll', "");
    ProductDetailsModel productDetailsModel =
        ProductDetailsModel.fromJson(json.decode(response));
    productList = productDetailsModel.data;
    isLosding(false);
    update();
    log(productDetailsModel.data.toString());
  }

  @override
  void onInit() {
    // ignore: todo
    // TODO: implement onInit
    super.onInit();
    getProductDetails();
  }
}
