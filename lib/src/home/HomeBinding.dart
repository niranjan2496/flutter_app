

import 'package:flutter_app/src/home/HomeController.dart';
import 'package:flutter_app/src/network/ApiHandlerRepo.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(ApiHandlerRepo());
    Get.put(HomeController());

  }

}