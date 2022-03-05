

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/src/home/HomeController.dart';
import 'package:flutter_app/src/wigdets/BottomSheet.dart';
import 'package:flutter_app/src/wigdets/LeftDrawer.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {

   @override
  Widget build(BuildContext context) {
    print("method---- build");
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Dashboard"),
          iconTheme: IconThemeData(color: Colors.white),
          systemOverlayStyle: SystemUiOverlayStyle(),
        ),
        body: controller.obx(
            (dataList)=>ListView.separated(
                itemBuilder: (context,index){
                  return ListTile(
                    leading: Image.asset("assets/car_running.png"),
                    title: Text("${dataList![index].vehicleNo}",style: TextStyle(color: Colors.black,fontSize: 15),),
                    subtitle: Text("${dataList![index].vehicleId}",style: TextStyle(color: Colors.black,fontSize: 11),),
                    horizontalTitleGap: 10,
                  );
                },
                separatorBuilder: (context,index)=>Divider(),
                itemCount: dataList!.length,
              ),
          onEmpty: Text("No data"),
        ),
        drawer: LeftDrawer(),
        // bottomSheet: BottomSheetMenu(),
        // bottomNavigationBar: Text("this is bottom Navigation Bar"),
      ),
    );
    // controller.viewOnMounted();

  }

}

