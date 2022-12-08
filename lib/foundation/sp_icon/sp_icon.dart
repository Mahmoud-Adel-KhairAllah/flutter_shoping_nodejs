import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_shoping_node_expres_sockit/foundation/theme/appColor.dart';
import 'package:flutter/material.dart';

class SPIcone extends StatelessWidget {
  SPIcone({super.key, required this.assetImage,this.isSelected=false});
  final String assetImage;
  
  bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/$assetImage',
      width: 25,
      height: 25,
      color:isSelected ? AppColor.accentColor : Colors.black,
    );
  }
}
