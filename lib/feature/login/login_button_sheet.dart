import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_shoping_node_expres_sockit/foundation/sp_solid_button/sp_solid_button.dart';
import 'package:flutter_shoping_node_expres_sockit/foundation/theme/appColor.dart';

class LoginButtonSheet extends StatelessWidget {
  const LoginButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      color: AppColor.whiteColor,
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/images/logo-color.png',
                width: 45,
                height: 45,
              ),
              Icon(CupertinoIcons.clear)
            ],
          ),
          SizedBox(
            height: 20,
          ),
          RichText(
            text: TextSpan(children: [
              TextSpan(text: 'Login', style: styleSpan(color: Colors.black,size: 15)),
              TextSpan(text: ' or ', style: styleSpan(color: Colors.grey)),
              TextSpan(text: 'SignUp', style: styleSpan(color: Colors.black,size: 15))
            ]),
          ),
          SizedBox(
            height: 35,
          ),
          Container(
            height: 46,
            child: TextField(
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
                      borderSide:
                          BorderSide(width: 1, color: AppColor.captionColor)),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black45,width: 1))
                          
                          ),
            ),
          ),
          SizedBox(height: 25,),
          RichText(
            text: TextSpan(children: [
              TextSpan(text: 'By continueing, I agree to the', style: styleSpan(size: 12)),
              TextSpan(text: ' Term of Use ', style: styleSpan(color:AppColor.accentColor,size: 11)),
              TextSpan(text: ' & ', style: styleSpan(size: 11.6)),
              TextSpan(text: 'Privacy & Policy', style: styleSpan(color: AppColor.accentColor,size: 12))
            ]),
          ),
          SizedBox(height: 30,),
          
          SPSolidButton(text: 'CONTINUE', width: MediaQuery.of(context).size.width),
          SizedBox(height: 30,),

          RichText(
            text: TextSpan(children: [
              TextSpan(text: 'Having trouble logging in?', style: styleSpan(size: 12.5)),
              TextSpan(text: 'Get help', style: styleSpan(color: AppColor.accentColor,size: 13))
            ]),
          ),
        ],
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
