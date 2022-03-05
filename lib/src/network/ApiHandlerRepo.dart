

import 'package:dio/dio.dart';
import 'package:flutter_app/src/exception/ApiErrorModel.dart';
import 'package:flutter_app/src/exception/TrackobitException.dart';
import 'package:flutter_app/src/home/HomeController.dart';
import 'package:flutter_app/src/login/LoginPageController.dart';
import 'package:flutter_app/src/models/LoginRequestData.dart';
import 'package:flutter_app/src/models/LoginResponseData.dart';
import 'package:flutter_app/src/models/ResponseModel.dart';
import 'package:flutter_app/src/models/VehicleData.dart';
import 'package:flutter_app/src/network/ApiResponseListener.dart';
import 'package:flutter_app/src/network/ApiService.dart';
import 'package:flutter_app/src/network/OwnInterceptor.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

 class ApiHandlerRepo{

   late ApiResponseListener listener;
   late Dio _dio;
   late ApiService _apiService;
   init(){
     _dio=Dio(BaseOptions(
       headers: {'Content-Type':"application/json"}));
        _dio.interceptors.addAll([OwnInterceptor()]);
     _apiService=ApiService(_dio);
   }

  void LoginUser(LoginRequestData loginRequestData)async{
      listener=Get.find<LoginPageController>();
   try {
     ResponseModel<LoginResponseData> _responseModel=await _apiService.loginUser(loginRequestData);
      listener.onApiResponse(_responseModel, null);
   } on DioError catch (e) {
    handleException(e);
   }
  }

  void getVehicleList(String vehicleId) async{
     listener=Get.find<HomeController>();
     try{
       ResponseModel _responseModel=await _apiService.getVehicleList(vehicleId);
       listener.onApiResponse(_responseModel, null);
     }on DioError catch(e){
       handleException(e);
     }
  }

  void handleException(DioError? error){
     ApiErrorModel? apiErrorModel;
     if(error!=null){
       switch(error.type){
         case DioErrorType.response:
           apiErrorModel=ApiErrorModel.fromJson(error.response?.data);
           print("error response data----------${error.response?.data}");
           break;
         case DioErrorType.other:
           apiErrorModel=ApiErrorModel("connection", 203, error.message,null);
           break;
         }
     }
     TrackobitException exception=TrackobitException(apiErrorModel);
     listener.onApiResponse(null, exception);
  }


   /*Future<Dio> getApiClient() async {
     String token = await GetStorage().read("USER_TOKEN");
     _dio.interceptors.clear();
     _dio.interceptors
         .add(*//*InterceptorsWrapper(onRequest: (RequestOptions options) {
       // Do something before request is sent
       options.headers["Authorization"] = "Bearer " + token;
       return options;
     },onResponse:(Response response) {
       // Do something with response data
       return response; // continue
     }, onError: (DioError error) async {
       // Do something with response error
       if (error.response?.statusCode == 403) {
         // update token and repeat
         // Lock to block the incoming request until the token updated

         _dio.interceptors.requestLock.lock();
         _dio.interceptors.responseLock.lock();
         RequestOptions options = error.response.request;
         FirebaseUser user = await FirebaseAuth.instance.currentUser();
         token = await user.getIdToken(refresh: true);
         await writeAuthKey(token);
         options.headers["Authorization"] = "Bearer " + token;

         _dio.interceptors.requestLock.unlock();
         _dio.interceptors.responseLock.unlock();
         _dio.request(options.path, options: options);
       } else {
         return error;
       }
     })*//*
        Interceptor(

        )
     );
     _dio.options.baseUrl = baseUrl;
     return _dio;
   }*/
}
