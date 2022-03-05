import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_app/src/network/InternectConnection.dart';
import 'package:flutter_app/src/util/ConstantsUtil.dart';
import 'package:flutter_app/src/util/SharedData.dart';
import 'package:get_storage/get_storage.dart';

class OwnInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options,
      RequestInterceptorHandler handler) async {
    print("onRequest called--------");
    print("baseUrl-----${options.baseUrl}");
    // options.baseUrl = "http://live.redmarkgps.com/gps/";
    // print("Data-----${options.data}");
    // print("Header-----${options.headers[0]}");
    // print("method-----${options.method}");
    print("path-----------------------------------------------------------${options.path}");
    if(!options.path.contains("signin")){
      String token=SharedData.getToken();
      print("authorization----${token}");
      options.headers["Authorization"] = token;
      }
    if (kReleaseMode) {
      print("onRequest releasemode--------");
    } else {
      print("onRequest debugmode--------");
    }
    if (kDebugMode) {
      print("onRequest debugmode--------");
    }

    if (await InternetConnction.isConnection()) {
      handler.next(options);
    } else {
      handler.reject(DioError(
          requestOptions: options,
          type: DioErrorType.other,
          error: "Not conneced to internect"));
    }
  }
    @override
    void onError(DioError err, ErrorInterceptorHandler handler) {
    print("Error-------------$err");
      switch (err.type) {
        case DioErrorType.other:
          break;
        case DioErrorType.cancel:
          break;
        default:
          break;
      }
      handler.next(err);
    }

    @override
    void onResponse(Response response, ResponseInterceptorHandler handler) {
      print("onResponse called--------");

      print("path==========${response.requestOptions.baseUrl}");
      handler.next(response);
    }
}