
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/src/exception/HandleApiErrors.dart';
import 'package:flutter_app/src/exception/TrackobitException.dart';
import 'package:flutter_app/src/models/LoginRequestData.dart';
import 'package:flutter_app/src/models/LoginResponseData.dart';
import 'package:flutter_app/src/models/ResponseModel.dart';
import 'package:flutter_app/src/network/ApiHandlerRepo.dart';
import 'package:flutter_app/src/network/ApiResponseListener.dart';
import 'package:flutter_app/src/routes/MyRoutes.dart';
import 'package:flutter_app/src/util/ConstantsUtil.dart';
import 'package:flutter_app/src/util/SharedData.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginPageController extends GetxController implements ApiResponseListener<LoginResponseData>{
  late ApiHandlerRepo _handlerRepo=Get.find<ApiHandlerRepo>();
  BuildContext? context;
  RxBool isLoading=false.obs;
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  GetStorage storage=GetStorage();
  var loginFormKey = GlobalKey<FormState>();


  void loginUser(BuildContext context){
    bool? isValidate = loginFormKey.currentState?.validate();
    if (!isValidate!) return;
    this.context=context;
    String userName=this.userNameController.text;
    String password=this.passwordController.text;
    this.isLoading.toggle();
    _handlerRepo.init();
    _handlerRepo.LoginUser(LoginRequestData(username: userName,password: password));
  }


  @override
  void onApiResponse(ResponseModel<LoginResponseData>? responseModel, TrackobitException? exception) async {
    this.isLoading.toggle();
    if(exception==null){
       SharedData.setToken(responseModel?.data?.token);
      SharedData.setAuthorities(responseModel?.data?.authorities);
      SharedData.setUser(responseModel?.data?.userClientData?.name);
      print("authorities -------${responseModel?.data?.authorities}");
      Get.offAndToNamed(MyRoutes.HomeRoute);

    }else{
      HandleApiErrors.handle(exception);
    }
  }

  void invokeAnnotation(){

  }
}