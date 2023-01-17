import 'dart:convert';
import 'dart:developer';

import 'package:flutter_shoping_node_expres_sockit/service/network/network_handler/network_handler.dart';
import 'package:get/get.dart';

class LandingPageController extends GetxController{
  RxString?token;
  RxBool loggedin=false.obs;
  void checkLogin()async{
    var scopToken=await NetworkHandler.getToken();
    log('message');
if(scopToken!=null){
  token?.value=scopToken;
  log(scopToken);
  loggedin.value=true;
  var response=await NetworkHandler.get("user-details", scopToken);
  var data=json.decode(response);
log(data['result']['fullName'].toString());
}
  }
  
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    checkLogin();
  }
}