import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_shoping_node_expres_sockit/feature/categories_page/model/categoey_model.dart';

class LastCategoryTile extends StatelessWidget {
   LastCategoryTile({super.key,required this.leafcategory});
 Leafcategory leafcategory;

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        width: size.width,
        padding: EdgeInsets.only(left: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(leafcategory.name),
            Divider()
        
          ]),),
    );
  }
}