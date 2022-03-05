

import 'package:flutter/material.dart';
import 'package:flutter_app/src/exception/ApiErrorModel.dart';
import 'package:flutter_app/src/exception/TrackobitException.dart';
import 'package:flutter_app/src/models/ApiFieldError.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HandleApiErrors{

  static void handle(TrackobitException exception){
    ApiErrorModel? errorModel=exception.getApiErrorModel;
    int code=errorModel!.code;
    switch (code) {
      case 401:
      case 208: {
        showToast(errorModel.message);
        break;
      }
      case 209: {
        showToast(errorModel.message);
        break;
      }

      case 110:
      case 100: {
        showToast("No Data Found");
        break;
      }
      case 406:
      case 403:{
        showToast(errorModel.message);
        break;
      }
      case 400:{
        if (errorModel.errors!=null&&errorModel.errors!.length>0){
          String m="";
          for (ApiFieldError fieldError in errorModel.errors!){
        m=m+"${fieldError.message}";
    }
    showToast(m);
    }
        break;
    }
    default: {
    showToast("some error occured");
    }
  }
    }
  }


  void showToast(String? message){
    Fluttertoast.showToast(msg: "$message",
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.black,
      textColor: Colors.white,
    );
}