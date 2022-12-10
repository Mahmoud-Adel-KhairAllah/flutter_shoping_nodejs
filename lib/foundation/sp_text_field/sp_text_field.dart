import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../theme/appColor.dart';

class SPTextField extends StatelessWidget {
  SPTextField(
      {super.key,
      this.hintText,
      this.keyboardType,
      this.labelText,
      this.prefixIcon,
      this.validator,
      this.textEditingController
      });
  String? labelText;
  String? prefixIcon;
  String? hintText;
  TextInputType? keyboardType;
  TextEditingController? textEditingController;
  final String? Function(String? value)? validator;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 46,
      child: TextFormField(
        validator: validator,
        controller: textEditingController,
        keyboardType: keyboardType,
        style: styleSpan(color: Colors.black45, size: 15),
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(color: AppColor.captionColor),
            labelText: labelText,
            labelStyle: styleSpan(),
            prefixIcon: prefixIcon != null
                ? Padding(
                    padding: const EdgeInsets.only(top: 15, left: 10),
                    child: Text(
                      prefixIcon!,
                      style: styleSpan(),
                    ),
                  )
                : null,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: AppColor.captionColor)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black45, width: 1)),
            errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red, width: 1.5)),
            focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red, width: 1))),
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
