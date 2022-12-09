import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../theme/appColor.dart';

class SPTextField extends StatelessWidget {
  SPTextField({super.key,this.keyboardType,this.labelText,this.prefixIcon});
  String? labelText;
  String? prefixIcon;
  TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      child: TextField(
        //controller: loginController.loginEditingController,
        keyboardType:keyboardType,
        style: styleSpan(color: AppColor.captionColor),
        decoration: InputDecoration(
            labelText: labelText,
            labelStyle: styleSpan(),
            prefixIcon: Padding(
              padding: const EdgeInsets.only(top: 15, left: 10),
              child: Text(
                prefixIcon!,
                style: styleSpan(),
              ),
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: AppColor.captionColor)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black45, width: 1))),
      ),
    );
  }

  TextStyle styleSpan(
      {Color color = Colors.black45,
      double size = 13,
      FontWeight weight = FontWeight.bold}) {
    return TextStyle(color: color, fontSize: size, fontWeight: weight);
  }
}
