import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/src/AppConfig.dart';
import 'package:flutter_app/src/home/HomeController.dart';
import 'package:flutter_app/src/util/Authorities.dart';
import 'package:flutter_app/src/util/CheckWidgetVisibility.dart';
import 'package:flutter_app/src/util/SharedData.dart';
import 'package:get/get.dart';

class LeftDrawer extends GetView<HomeController> {
  String url =
      "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80";

  @override
  Widget build(BuildContext context) {
    AppConfig? appconfig = AppConfig.of(context);
    return Drawer(
      child: Container(
          color: Colors.purple,
          child: ListView(
            children: [
              DrawerHeader(
                  padding: EdgeInsets.zero,
                  child: UserAccountsDrawerHeader(
                    decoration: BoxDecoration(color: Colors.white),
                    margin: EdgeInsets.zero,
                    accountEmail: Text(
                      SharedData.getUser(),
                      style: TextStyle(color: Colors.black),
                    ),
                    accountName:
                        Text("", style: TextStyle(color: Colors.black)),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage:
                          AssetImage(appconfig!.getAssetPath("loginlogo.png")),
                    ),
                  )),
              ListTile(
                leading: Icon(
                  CupertinoIcons.airplane,
                  color: Colors.white,
                ),
                title: Text(
                  "Live Map",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Visibility(
                visible: CheckWidgetVisibility.isNoAccessAuthorityExist(
                    [Authorities.ROLE_CLIENT]),
                child: ListTile(
                  leading: SizedBox(
                      height: 40.0,
                      width: 40.0, // fixed width and height
                      child:
                          Image.asset(appconfig.getAssetPath("loginlogo.png"))),
                  title: Text(
                    "Km Summary",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Visibility(
                visible: CheckWidgetVisibility.isNoAccessAuthorityExist(
                    [Authorities.ROLE_CLIENT]),
                child: ListTile(
                  leading: SizedBox(
                      height: 40.0,
                      width: 40.0, // fixed width and height
                      child:
                          Image.asset(appconfig.getAssetPath("loginlogo.png"))),
                  title: Text(
                    "Travel Summary",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Visibility(
                visible: CheckWidgetVisibility.isAllAuthoritiesExist(
                    [Authorities.ROLE_TRANSPORTER]),
                child: ListTile(
                  leading: SizedBox(
                      height: 40.0,
                      width: 40.0, // fixed width and height
                      child:
                          Image.asset(appconfig.getAssetPath("loginlogo.png"))),
                  title: Text(
                    "Travel Subcription Due Date",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Visibility(
                visible: CheckWidgetVisibility.isNoAccessAuthorityExist(
                    [Authorities.SETTING_NO_ACCESS]),
                child: ListTile(
                  leading: SizedBox(
                      height: 40.0,
                      width: 40.0, // fixed width and height
                      child:
                          Image.asset(appconfig.getAssetPath("loginlogo.png"))),
                  title: Text(
                    "Settings",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Visibility(
                visible: CheckWidgetVisibility.isAllAuthoritiesExist([
                  Authorities.SHOW_FULE_PRICE_AND_RC_AND_LICENSE_CHECK_AUTHORITY
                ]),
                child: ListTile(
                  leading: SizedBox(
                      height: 40.0,
                      width: 40.0, // fixed width and height
                      child:
                          Image.asset(appconfig.getAssetPath("loginlogo.png"))),
                  title: Text(
                    "Fuel Price",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Visibility(
                visible: CheckWidgetVisibility.isAllAuthoritiesExist([
                  Authorities.SHOW_FULE_PRICE_AND_RC_AND_LICENSE_CHECK_AUTHORITY
                ]),
                child: ListTile(
                  leading: SizedBox(
                      height: 40.0,
                      width: 40.0, // fixed width and height
                      child:
                          Image.asset(appconfig.getAssetPath("loginlogo.png"))),
                  title: Text(
                    "Check License",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Visibility(
                visible: CheckWidgetVisibility.isAllAuthoritiesExist([
                  Authorities.SHOW_FULE_PRICE_AND_RC_AND_LICENSE_CHECK_AUTHORITY
                ]),
                child: ListTile(
                  leading: SizedBox(
                      height: 40.0,
                      width: 40.0, // fixed width and height
                      child:
                          Image.asset(appconfig.getAssetPath("loginlogo.png"))),
                  title: Text(
                    "Check RC",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Visibility(
                visible: CheckWidgetVisibility.isAllAuthoritiesExist([
                  Authorities.SHOW_FULE_PRICE_AND_RC_AND_LICENSE_CHECK_AUTHORITY
                ]),
                child: ListTile(
                  leading: SizedBox(
                      height: 40.0,
                      width: 40.0, // fixed width and height
                      child:
                          Image.asset(appconfig.getAssetPath("loginlogo.png"))),
                  title: Text(
                    "Answer Ticket",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Visibility(
                visible: CheckWidgetVisibility.isAllAuthoritiesExist([
                  Authorities.SHOW_FULE_PRICE_AND_RC_AND_LICENSE_CHECK_AUTHORITY
                ]),
                child: ListTile(
                  leading: SizedBox(
                      height: 40.0,
                      width: 40.0, // fixed width and height
                      child:
                          Image.asset(appconfig.getAssetPath("loginlogo.png"))),
                  title: Text(
                    "Raise Ticket",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Visibility(
                visible: CheckWidgetVisibility.isNoAccessAuthorityExist([
                  Authorities.DRIVER_NO_ACCESS
                ]),
                child: ListTile(
                  leading: SizedBox(
                      height: 40.0,
                      width: 40.0, // fixed width and height
                      child:
                          Image.asset(appconfig.getAssetPath("loginlogo.png"))),
                  title: Text(
                    "Driver List ",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              ListTile(
                  leading: Icon(
                    CupertinoIcons.lock,
                    color: Colors.white,
                  ),
                  title: Text(
                    "logout",
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    this.controller.logoutUser(context);
                  })
            ],
          )),
    );
  }
}
