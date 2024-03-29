import 'package:flutter/material.dart';

import 'package:flutter_shoping_node_expres_sockit/feature/landing_page/controller/landingpage_controller.dart';
import 'package:flutter_shoping_node_expres_sockit/feature/login/controller/login_controller.dart';

import 'package:flutter_shoping_node_expres_sockit/foundation/sp_solid_button/sp_solid_button.dart';
import 'package:flutter_shoping_node_expres_sockit/foundation/sp_text_field/sp_text_field.dart';
import 'package:flutter_shoping_node_expres_sockit/foundation/theme/appColor.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class LoginButtonSheet extends StatelessWidget {
  LoginButtonSheet({super.key});
  var loginController = Get.put(LoginController());
  // ignore: non_constant_identifier_names
  var landingpage_controller = Get.put(LandingPageController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      color: AppColor.whiteColor,
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
      child: ListView(
        children: [
          Column(
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
                  IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () {
                      Get.back();
                    },
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: 'Login',
                      style: styleSpan(color: Colors.black, size: 15)),
                  TextSpan(text: ' or ', style: styleSpan(color: Colors.grey)),
                  TextSpan(
                      text: 'SignUp',
                      style: styleSpan(color: Colors.black, size: 15))
                ]),
              ),
              const SizedBox(
                height: 35,
              ),
              SPTextField(
                textEditingController: loginController.loginEditingController,
                labelText: 'Phone Number',
                prefixIcon: '+972',
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(
                height: 25,
              ),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: 'By continueing, I agree to the',
                      style: styleSpan(size: 12)),
                  TextSpan(
                      text: ' Term of Use ',
                      style: styleSpan(color: AppColor.accentColor, size: 11)),
                  TextSpan(text: ' & ', style: styleSpan(size: 11.6)),
                  TextSpan(
                      text: 'Privacy & Policy',
                      style: styleSpan(color: AppColor.accentColor, size: 12))
                ]),
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 30,
              ),
              SPSolidButton(
                  onPressed: () async {
                    await loginController.login();
                    landingpage_controller.checkLogin();
                  },
                  text: 'CONTINUE',
                  width: MediaQuery.of(context).size.width),
              const SizedBox(
                height: 30,
              ),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: 'Having trouble logging in?',
                      style: styleSpan(size: 12.5)),
                  TextSpan(
                      text: 'Get help',
                      style: styleSpan(color: AppColor.accentColor, size: 13))
                ]),
              ),
            ],
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
