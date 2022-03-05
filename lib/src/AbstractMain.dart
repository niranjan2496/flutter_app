import 'package:flutter/material.dart';
import 'package:flutter_app/src/home/HomeBinding.dart';
import 'package:flutter_app/src/home/HomePage.dart';
import 'package:flutter_app/src/login/LoginPage.dart';
import 'package:flutter_app/src/login/LoginPageBinding.dart';
import 'package:flutter_app/res/InternationalizationString.dart';
import 'package:flutter_app/src/routes/MyRoutes.dart';
import 'package:flutter_app/src/styles/Themes.dart';
import 'package:flutter_app/src/util/SharedData.dart';
import 'package:get/get.dart';


class AbstractMain {

GetMaterialApp getMainMaterialApp(){
     return GetMaterialApp(
        translations: InternationalizationStrings(), // your translations
        locale: Locale('en', 'US'),
        fallbackLocale: Locale('en', 'US'),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
     theme: MyThemes.lightThemeData(),
      // darkTheme:MyThemes.dardThemeData(context),
      getPages:[
       GetPage(name: "/", page:() {
         print("isUserLogin-----${SharedData.isTokenExist()}");
         // print("user Token-----${SharedData.getToken()}");
          return SharedData.isTokenExist() ? HomePage() : LoginPage();
          },
           binding:SharedData.isTokenExist()?HomeBinding():LoginPageBinding()
       ),
        GetPage(name: MyRoutes.HomeRoute, page:()=> HomePage(),binding: HomeBinding()),
        GetPage(name: MyRoutes.LoginRoute, page: ()=>LoginPage(),binding: LoginPageBinding())
      ]
    );
  }

}
