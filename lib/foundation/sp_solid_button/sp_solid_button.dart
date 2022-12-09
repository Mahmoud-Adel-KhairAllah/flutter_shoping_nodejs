import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../theme/appColor.dart';

class SPSolidButton extends StatelessWidget {
  SPSolidButton({super.key, required this.text, required this.width,this.onPressed});
  String text;
  double width;
  Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed:onPressed,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(AppColor.accentColor)),
        child: Container(
          width: width,
          height: 45,
          child: Center(child: Text(text,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),)),
        ));
  }
}
