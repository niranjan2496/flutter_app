
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/src/AbstractMain.dart';
import 'package:flutter_app/src/AppConfig.dart';
import 'package:flutter_app/src/home/HomeBinding.dart';
import 'package:flutter_app/src/home/HomePage.dart';
import 'package:flutter_app/src/login/LoginPage.dart';
import 'package:flutter_app/src/login/LoginPageBinding.dart';
import 'package:flutter_app/src/routes/MyRoutes.dart';
import 'package:flutter_app/src/util/SharedData.dart';
import 'package:get/get.dart';


  void main() async {
    await SharedData().init();
    SharedData.setBaseUrl("https://tbtrack.in/gps/");
    var appConfig = AppConfig(flavor: Flavor.coffee, child:AbstractMain().getMainMaterialApp());


    runApp(appConfig);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.purple,
      statusBarIconBrightness: Brightness.light,

    ));

}
