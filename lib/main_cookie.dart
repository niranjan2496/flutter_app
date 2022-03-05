import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/src/AbstractMain.dart';
import 'package:get_storage/get_storage.dart';

import 'src/AppConfig.dart';

void main(){
  GetStorage().write("share_url", "https://tbtrack.in/gps/");
  var appConfig=AppConfig(flavor: Flavor.cookie, child: AbstractMain());
  runApp(appConfig);
}
