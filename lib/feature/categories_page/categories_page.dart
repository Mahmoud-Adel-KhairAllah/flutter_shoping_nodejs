import 'package:flutter/material.dart';
import 'package:flutter_shoping_node_expres_sockit/feature/categories_page/ui/main_category_tile.dart';
import 'package:flutter_shoping_node_expres_sockit/foundation/theme/appColor.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'controller/category_details_controller.dart';

class CategoriesPage extends StatelessWidget {
  CategoriesPage({super.key});
  CategoryDetailsController categoryDetailsController =
      Get.put(CategoryDetailsController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(
      child: GetBuilder<CategoryDetailsController>(
          builder: (categoryDetailsController) {
        return categoryDetailsController.isLoaded.value
        ? const Center(
            child: CircularProgressIndicator(
            color: AppColor.accentColor,
          ))
        : categoryDetailsController.categoryList.isEmpty
            ? const Center(
                child: Text('notfoundData'),
              ):ListView.builder(
                itemCount: categoryDetailsController.categoryList.length,
                itemBuilder: (context, index) {
                return MainCategoryTile(categoryDetailsItem: categoryDetailsController.categoryList[index]);
              },);
      }),
    ));
  }
}
