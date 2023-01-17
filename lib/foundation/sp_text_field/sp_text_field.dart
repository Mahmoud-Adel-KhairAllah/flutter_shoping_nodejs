import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../theme/appColor.dart';

class SPTextField extends StatefulWidget {
  SPTextField(
      {super.key,
      this.hintText,
      this.keyboardType,
      this.labelText,
      this.prefixIcon,
      this.validator,
      this.textEditingController,
      this.isSecure=false
      });
  String? labelText;
  String? prefixIcon;
  String? hintText;
  bool isSecure;
  TextInputType? keyboardType;
  TextEditingController? textEditingController;
  final String? Function(String? value)? validator;

  @override
  State<SPTextField> createState() => _SPTextFieldState();
}

class _SPTextFieldState extends State<SPTextField> {
  bool isVisible=true;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 46,
      child: TextFormField(
        validator: widget.validator,
        controller: widget.textEditingController,
        keyboardType: widget.keyboardType,
        obscureText:widget.isSecure ? isVisible : widget.isSecure,
        style: styleSpan(color: Colors.black45, size: 15),
        decoration: InputDecoration(
          suffixIcon:widget.isSecure? isVisible?InkWell(onTap: () {
              setState(() {
              isVisible=!isVisible;
           });
          },child: Icon(Icons.visibility_off)):InkWell(onTap: () {
           setState(() {
              isVisible=!isVisible;
           });
          },child: Icon(Icons.visibility)):null,
            hintText: widget.hintText,
            hintStyle: TextStyle(color: AppColor.captionColor),
            labelText: widget.labelText,
            labelStyle: styleSpan(),
            prefixIcon: widget.prefixIcon != null
                ? Padding(
                    padding: const EdgeInsets.only(top: 12, left: 15,right: 15),
                    child: Text(
                      widget.prefixIcon!,
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
