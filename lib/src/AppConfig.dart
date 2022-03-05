
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

enum Flavor{
  cookie,
  coffee
}
String getFlavorName(Flavor flavor) {
  String result;
  switch (flavor) {
    case Flavor.coffee:
      result = 'coffee';
      break;
    case Flavor.cookie:
      result = 'cookie';
      break;
  }
  return result;
}
class AppConfig extends InheritedWidget {
late ThemeData themeData;
final Flavor flavor;

AppConfig({
    Key? key,
    required this.flavor,
    required Widget child,
      }):super(key:key,child:child);

static AppConfig? of(BuildContext context){
  return context.dependOnInheritedWidgetOfExactType<AppConfig>();
}


String getAssetPath(String name)  {
  if (flavor != null) {
    return 'assets/${getFlavorName(flavor)}/$name';
  } else {
    return 'assets/$name';
  }
}

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;


}