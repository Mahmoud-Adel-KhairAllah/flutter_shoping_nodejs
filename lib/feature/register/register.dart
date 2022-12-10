import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_shoping_node_expres_sockit/feature/login/controller/login_controller.dart';
import 'package:flutter_shoping_node_expres_sockit/feature/register/controller/register_controller.dart';
import 'package:flutter_shoping_node_expres_sockit/foundation/gender_button/gender_button.dart';
import 'package:flutter_shoping_node_expres_sockit/foundation/sp_solid_button/sp_solid_button.dart';
import 'package:flutter_shoping_node_expres_sockit/foundation/sp_text_button/sp_text_button.dart';
import 'package:flutter_shoping_node_expres_sockit/foundation/sp_text_field/sp_text_field.dart';
import 'package:flutter_shoping_node_expres_sockit/foundation/theme/appColor.dart';
import 'package:get/get.dart';

class Register extends StatelessWidget {
  Register({super.key});
  LoginController loginController = Get.find<LoginController>();
  RegisterContrller registerContrller = Get.put(RegisterContrller());
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            color: Colors.black,
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Get.back();
            },
          ),
          backgroundColor: AppColor.whiteColor,
          elevation: 0,
          title: Text(
            'Complete your Signup',
            style: TextStyle(
                fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
          )),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mobile Number',
                          style: TextStyle(
                              color: AppColor.captionColor, fontSize: 11),
                        ),
                        Text(
                          loginController.loginEditingController.text
                              .toString(),
                          style: TextStyle(color: Colors.black87),
                        )
                      ],
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.teal,
                      radius: 12,
                      child: Icon(Icons.check),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SPTextField(
                  labelText: 'Create Password',
                  textEditingController:
                      registerContrller.passwordTextController,
                ),
                const SizedBox(
                  height: 20,
                ),
                SPTextField(
                  labelText: 'Full Name (Optional)',
                  textEditingController:
                      registerContrller.fullNameTextController,
                ),
                const SizedBox(
                  height: 20,
                ),
                SPTextField(
                  labelText: 'Email  (Optional)',
                  textEditingController: registerContrller.emailTextController,
                ),
                const SizedBox(
                  height: 20,
                ),
                Obx(
                  () => GenderButton(
                    onGender: onGenderTap,
                    gender: registerContrller.gender.value,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SPTextField(
                  prefixIcon: '+972',
                  hintText: '599123456',
                  labelText: 'Alternate Mobile Number',
                  textEditingController:
                      registerContrller.mobileNumberTextController,
                ),
                const SizedBox(
                  height: 20,
                ),
                SPTextField(
                  labelText: 'Hint Name',
                  textEditingController: registerContrller.hintTextController,
                ),
                const SizedBox(
                  height: 25,
                ),
                SPSolidButton(
                  text: 'Create Account',
                  width: size.width,
                  onPressed:registerContrller.register,
                  //  () {
                  //   formKey.currentState!.validate();
                  //   registerContrller.register;
                  // },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onGenderTap(String gender) {
    registerContrller.gender.value = gender;
  }
}
