import 'dart:io';

import 'package:background_location/background_location.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/src/AppConfig.dart';
import 'package:flutter_app/src/login/LoginPageController.dart';
import 'package:get/get.dart';

class LoginPage extends GetView<LoginPageController> {


  @override
  Widget build(BuildContext context) {
    var appconfig = AppConfig.of(context);
    print("flavor----- ${appconfig?.flavor}");
    return Scaffold(
        body: Obx(()
    {
       return controller.isLoading.isTrue? Center(
        child: CircularProgressIndicator(),):
      SingleChildScrollView(
          child: Form(
            key: controller.loginFormKey,
            child: Column(children: [
              SizedBox(
                height: 70,
              ),
              Image.asset(appconfig!.getAssetPath("loginlogo.png"),
                width: 212,
                height: 212,
                fit: BoxFit.cover,
              ),
              Text("welcome".tr),
              SizedBox(
                height: 20,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: "Enter User Name",
                            labelText: "user_name".tr),
                        onChanged: (value) {    },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "User cann't be empty";
                          }
                          return null;
                        },
                        controller: controller.userNameController,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                                hintText: "Enter Password", labelText: "password".tr),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Password cann't be empty";
                              }
                              return null;
                            },
                            controller: controller.passwordController,
                          ),
                        ),
                      )
                    ],
                  )),
              SizedBox(
                height: 20,
              ),
              // GestureDetector()
              Material(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(8),
                child: InkWell(
                    onTap: () =>
                    {
                      controller.loginUser(context)
                     // PermissionsService().hasLocationPermission(),
                      // startForegroundService()
                      // PermissionsService().hasLocationPermission()
                      //   startLocation()
                      //   startBackgroundLocationService()
                    },
                    child: Container(
                      width: 150,
                      height: 40,
                      // color: Colors.purple,
                      alignment: Alignment.center,
                      child: Text(
                        "sign_in".tr,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.normal),
                      ),
                    )),
              )
            ]),
          ));
    }));}


  /*void startForegroundService() async {
    print("startService=========");
    if (Platform.isAndroid) {
      var methodChannel = MethodChannel("flutter_service");
      var result = await methodChannel.invokeMapMethod("startservice");
      print(result);
    }*/
    /* await FlutterForegroundPlugin.setServiceMethodInterval(seconds: 5);
    await FlutterForegroundPlugin.setServiceMethod(globalForegroundService);
    await FlutterForegroundPlugin.startForegroundService(
      holdWakeLock: false,
      onStarted: () {
        print("Foreground on Started");
      },
      onStopped: () {
        print("Foreground on Stopped");
      },
      title: "Flutter Foreground Service",
      content: "This is Content",
      iconName: "loginlogo",
    );*/
  }

  /* void globalForegroundService() {
    print("current datetime is ${DateTime.now()}");
  }*/

  /*void startLocation() async{
      LocationData _locationData;
      location=Location();
      _serviceEnabled = await location.serviceEnabled();
      if (!_serviceEnabled) {
        _serviceEnabled = await location.requestService();
        if (!_serviceEnabled) {
          print("service in not enalbed");
          return;
        }
      }

      _permissionGranted = await location.hasPermission();
      if (_permissionGranted == PermissionStatus.denied) {
        _permissionGranted = await location.requestPermission();
        if (_permissionGranted != PermissionStatus.granted) {
          return;
        }
      }
      location.enableBackgroundMode(enable: true);
      _locationData = await location.getLocation();
      print("data first=============");
      print(_locationData);
      location.onLocationChanged.listen((LocationData currentLocation) {
        print("data=============");
        print(currentLocation.latitude);
        _userNameController.text="${currentLocation.latitude},${currentLocation.longitude}";
      });
    }*/

  void startBackgroundLocationService() {
    BackgroundLocation.setAndroidNotification(
      title: "Notification title",
      message: "Notification message",
      icon: "@mipmap/ic_launcher",
    );
    BackgroundLocation.setAndroidConfiguration(1000);
    BackgroundLocation.getLocationUpdates((location) {
      print("background location-------- ${location.longitude}");
    });
    BackgroundLocation.startLocationService();
  }






  /*void getBatteryState() async {
    var bty = await _battery.batteryLevel;
// Access current battery level
    print("battery------${bty}");

// Be informed when the state (full, charging, discharging) changes
    _battery.onBatteryStateChanged.listen((BatteryState state) {
      print("battery------${state}");
    });
  }*/

  /*void getDeviceInfo() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    if (Platform.isAndroid) {
      AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;

      print('Running on ${androidInfo.model}'); // e.g. "Moto G (4)"
      print('Running on ${androidInfo.androidId}'); // e.g. "Moto G (4)"
    } else {
      IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
      print('Running on ${iosInfo.utsname.machine}');
    }
  }*/

