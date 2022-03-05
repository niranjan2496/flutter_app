

import 'package:flutter_app/src/login/LoginPageController.dart';
import 'package:flutter_app/src/network/ApiHandlerRepo.dart';
import 'package:get/get.dart';

class LoginPageBinding extends Bindings{
    @override
  void dependencies() {
    Get.put(ApiHandlerRepo());
    Get.put(LoginPageController());
  }
}