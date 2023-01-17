// ignore_for_file: sort_child_properties_last

import 'dart:ffi';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_shoping_node_expres_sockit/feature/categories_page/model/categoey_model.dart';
import 'package:flutter_shoping_node_expres_sockit/feature/categories_page/ui/sub_main_category.dart';
import 'package:get/get.dart';

class MainCategoryTile extends StatelessWidget {
  MainCategoryTile({super.key,required this.categoryDetailsItem});
  CategoryDetailsItem categoryDetailsItem;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ExpansionTile(
      collapsedBackgroundColor: Color(int.parse(categoryDetailsItem.backgroundColor)),
      title: SizedBox(
        height: 100,
        width: size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        categoryDetailsItem.name,
                        // ignore: prefer_const_constructors
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      const Icon(Icons.arrow_drop_down)
                    ],
                  ),
                  Text(categoryDetailsItem.desc,
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          overflow: TextOverflow.ellipsis))
                ],
              ),
            ),
            CachedNetworkImage(imageUrl:categoryDetailsItem.imageUrl)
          ],
        ),
      ),
      children: categoryDetailsItem.subCategory.map((e) => SubMainCategory(subCategory:e,)).toList(),
      //leading: Text('leading'),
      trailing: const SizedBox.shrink(),
      //subtitle:Text('leading2') ,
    );
  }
}
