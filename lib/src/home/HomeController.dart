
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_app/src/exception/HandleApiErrors.dart';
import 'package:flutter_app/src/exception/TrackobitException.dart';
import 'package:flutter_app/src/models/ResponseModel.dart';
import 'package:flutter_app/src/models/VehicleData.dart';
import 'package:flutter_app/src/network/ApiHandlerRepo.dart';
import 'package:flutter_app/src/network/ApiResponseListener.dart';
import 'package:flutter_app/src/routes/MyRoutes.dart';
import 'package:flutter_app/src/util/ConstantsUtil.dart';
import 'package:flutter_app/src/util/SharedData.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController with StateMixin<List<VehicleData>> implements ApiResponseListener{

  bool isApiCalling=false;
  late ApiHandlerRepo handlerRepo;


  logoutUser(BuildContext context)async {
    print("logout ---------- true");
    GetStorage storage = GetStorage();
    SharedData.clearData();
    Get.offAllNamed(MyRoutes.LoginRoute);
  }

  @override
  void onInit() {
    super.onInit();
    apiCallingFixedRate();
  }

@override
  void onResumed(){
  print("method ---------------------onResume");
  }
  @override
  void onPaused(){
    print("method ---------------------onPuase");
  }
  @override
  void onInactive(){
    print("method ---------------------onInactive");
  }
  @override
  void onDetached(){
    print("method ---------------------onDetached");

  }


  apiCallingFixedRate(){
    if(!isApiCalling){
      print("0q34589================");
      isApiCalling=true;
      handlerRepo=Get.find<ApiHandlerRepo>();
      handlerRepo.init();
      getVehicleList();
      Timer.periodic(Duration(seconds: 30), (timer) { getVehicleList();});
    }

  }
  
  getVehicleList(){
    print("mehtod============getVehiclelist==========================================");
    handlerRepo.getVehicleList("");
  }

  @override
  void onApiResponse(ResponseModel? responseModel, TrackobitException? exception) {
    if(exception==null){
      print("response----------$responseModel");
      change(responseModel?.vehicleDataList,status: RxStatus.success());
    }else{
    HandleApiErrors.handle(exception);
    }
  }



}