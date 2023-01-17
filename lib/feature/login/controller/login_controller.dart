import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter_shoping_node_expres_sockit/feature/landing_page/landing_page.dart';
import 'package:flutter_shoping_node_expres_sockit/feature/login/model/login_model.dart';
import 'package:flutter_shoping_node_expres_sockit/feature/register/register.dart';
import 'package:flutter_shoping_node_expres_sockit/service/network/network_handler/network_handler.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController loginEditingController = TextEditingController();
  String msg='';
  Future<void> login() async {
    LoginModel user = LoginModel(mobileNo: loginEditingController.text);
    var response = await NetworkHandler.post(loginModelToJson(user), 'login');
    var data = json.decode(response);
     Get.snackbar('title',  data['msg']);
    
    // ignore: prefer_interpolation_to_compose_strings
    log('message' + data['msg']);
    if (data['msg'] == 'register') {
      Get.to(Register());
    }else{

      await NetworkHandler.storeToken(data["token"]);
      Get.offAll(const LandingPage());
    }
    
  }
}
