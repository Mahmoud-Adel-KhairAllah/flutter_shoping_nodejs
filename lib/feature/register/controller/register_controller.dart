import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter_shoping_node_expres_sockit/feature/landing_page/landing_page.dart';
import 'package:flutter_shoping_node_expres_sockit/feature/login/controller/login_controller.dart';
import 'package:flutter_shoping_node_expres_sockit/feature/register/model/register_model.dart';
import 'package:flutter_shoping_node_expres_sockit/service/network/network_handler/network_handler.dart';
import 'package:get/get.dart';

class RegisterContrller extends GetxController {
  TextEditingController passwordTextController = TextEditingController();
  TextEditingController fullNameTextController = TextEditingController();
  TextEditingController emailTextController = TextEditingController();
  TextEditingController mobileNumberTextController = TextEditingController();
  TextEditingController hintTextController = TextEditingController();
  RxString gender = "".obs;
  LoginController loginController = Get.find<LoginController>();

  void register() async {
    var registerModel = RegisterModel(
        mobileNo: loginController.loginEditingController.text,
        password: passwordTextController.text,
        fullName: fullNameTextController.text,
        email: emailTextController.text,
        gender: gender.value,
        alternateMoNumber: mobileNumberTextController.text,
        hint: hintTextController.text);
    var response = await NetworkHandler.post(
        registerModelToJson(registerModel), 'login/register');
   
    var data = json.decode(response);
    if(data['token']!=null){
 log('response------------------>'+response);
    await NetworkHandler.storeToken(data['token']);
    }
    Get.offAll(LandingPage());
  }
}
