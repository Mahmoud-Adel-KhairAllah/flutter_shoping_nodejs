import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../theme/appColor.dart';

class SPTextField extends StatelessWidget {
  const SPTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      child: TextField(
        //controller: loginController.loginEditingController,
        keyboardType: TextInputType.number,
        style: styleSpan(color: AppColor.captionColor),
        decoration: InputDecoration(
            labelText: 'Phone Number',
            labelStyle: styleSpan(),
            prefixIcon: Padding(
              padding: const EdgeInsets.only(top: 15, left: 10),
              child: Text(
                '+972',
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
