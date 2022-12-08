import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_shoping_node_expres_sockit/foundation/theme/appColor.dart';

class SPTextButton extends StatelessWidget {
   SPTextButton({super.key,required this.text});
  String text;
  @override
  Widget build(BuildContext context) {
    return Material(
    color: AppColor.whiteColor,
    child: InkWell(onTap: () {
      
    },child: Container(padding: EdgeInsets.symmetric(vertical:15,horizontal: 60),
    width: MediaQuery.of(context).size.width,
    child: Text(text,style: TextStyle(fontSize: 11.5,fontWeight: FontWeight.w600,color: AppColor.heading6tColor),),
    ),),
    );
  }
}
