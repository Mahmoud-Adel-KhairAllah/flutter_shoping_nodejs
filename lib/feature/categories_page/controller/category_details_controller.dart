import 'dart:convert';
import 'dart:developer';

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_shoping_node_expres_sockit/service/network/network_handler/network_handler.dart';
import 'package:get/get.dart';

import '../model/categoey_model.dart';

class CategoryDetailsController extends GetxController{
  RxBool isLoaded=false.obs;
  List<CategoryDetailsItem>categoryList=[];

   onRefresh (){
    getCategory();
  }

  getCategory() async {
    isLoaded(true);
    categoryList.clear();
    var response=await NetworkHandler.get("category-details","");
    CategoryDetailsModel categoryDetailsModel=CategoryDetailsModel.fromJson(json.decode(response));
    categoryList=categoryDetailsModel.data;
isLoaded(false);
update();
    categoryList.forEach((element) {
      log(element.toJson().toString());
    });

  }
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getCategory();
  }

}