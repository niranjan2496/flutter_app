import 'package:flutter/material.dart';
import 'package:flutter_app/activities/HomePage.dart';
import 'package:flutter_app/activities/LoginPage.dart';

void main() {
runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // only one activity can be specify
      // home: HomePage(),
      themeMode: ThemeMode.light,
        theme: ThemeData(
          primarySwatch: Colors.amber
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark
        ),
      routes:{
        "/":(context)=>LoginPage(),
        "/login":(context)=>LoginPage()
      },
    );
  }
}
