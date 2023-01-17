import 'package:flutter/material.dart';
import 'package:flutter_shoping_node_expres_sockit/feature/categories_page/model/categoey_model.dart';
import 'package:flutter_shoping_node_expres_sockit/feature/categories_page/ui/last_category_tile.dart';

// ignore: must_be_immutable
class SubMainCategory extends StatelessWidget {
   SubMainCategory({super.key,required this.subCategory});
  SubCategory subCategory;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:subCategory.isExpandable?ExpansionTile(
        title: Center(child: Text(subCategory.name,style: const TextStyle(fontWeight: FontWeight.w600,fontSize: 15,color: Colors.black),)),
        leading: imageSub(subCategory: subCategory),
        children: subCategory.leafcategory.map((e) => LastCategoryTile(leafcategory: e,)).toList(),
      ):ListTile(
     
        title: Center(child: Text(subCategory.name,style: const TextStyle(fontWeight: FontWeight.w600,fontSize: 15,color: Colors.black),)),
        leading: imageSub(subCategory: subCategory),
    ));
  }
}

class imageSub extends StatelessWidget {
  const imageSub({
    Key? key,
    required this.subCategory,
  }) : super(key: key);

  final SubCategory subCategory;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1,
      
    child: SizedBox(
      width: 100,
      height: 100,
      child: Image.network(subCategory.imageUrl)));
  }
}