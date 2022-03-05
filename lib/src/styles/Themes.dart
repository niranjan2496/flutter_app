
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyThemes {
  static ThemeData lightThemeData()=>ThemeData(
      primaryColor: Colors.purple,
      primarySwatch: Colors.purple,
      // primaryColorDark: Colors.purple,
      // indicatorColor: Colors.white,
      // indicatorColor: Colors.white,
    accentColor: Colors.purple,
      appBarTheme: AppBarTheme(
          // elevation: 0,
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(color: Colors.white),
          brightness: Brightness.light,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.purple,
            statusBarIconBrightness: Brightness.light,
          ),

      )

  );
  static ThemeData dardThemeData()=>ThemeData(
      brightness: Brightness.dark
  );
}