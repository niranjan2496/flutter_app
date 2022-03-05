

import 'package:flutter_app/src/exception/TrackobitException.dart';
import 'package:flutter_app/src/models/ResponseModel.dart';

abstract class ApiResponseListener<T>{
  void onApiResponse(ResponseModel<T>? responseModel,TrackobitException? exception);
}