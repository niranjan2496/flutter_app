import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/src/login/LoginPage.dart';
import 'package:flutter_app/src/styles/Themes.dart';

void main() {

  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,

  ));

}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // only one activity can be specify
      // src.home: HomePage(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: MyThemes.lightThemeData(context),
     darkTheme:MyThemes.dardThemeData(context),
      routes: {
        "/": (context) => LoginPage(),
        // MyRoutes.LoginRoute: (context) => LoginPage(),
        // MyRoutes.HomeRoute: (context) => HomePage()
      },
    );
  }
}
