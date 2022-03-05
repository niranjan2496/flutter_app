
import 'package:dio/dio.dart';
import 'package:flutter_app/src/models/LoginRequestData.dart';
import 'package:flutter_app/src/models/LoginResponseData.dart';
import 'package:flutter_app/src/models/ResponseModel.dart';
import 'package:flutter_app/src/models/VehicleData.dart';
import 'package:retrofit/http.dart';
part 'ApiService.g.dart';


@RestApi(baseUrl: "https://tbtrack.in/gps/")
abstract class ApiService{
  factory ApiService(Dio dio) = _ApiService;
    @POST("v3/signin")
    Future<ResponseModel<LoginResponseData>> loginUser(@Body() LoginRequestData requestData);

  @GET("rest/v1/transporter/vehicle/{vehicleId}")
  Future<ResponseModel<List<VehicleData>>> getVehicleList(@Path("vehicleId") String vehicleId);

}
