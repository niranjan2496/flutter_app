import 'package:json_annotation/json_annotation.dart';

import 'VehicleData.dart';

part 'ResponseModel.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class ResponseModel<T> {
  @JsonKey(name: "status")
  String? status;
  @JsonKey(name: "code")
  int? code;
  @JsonKey(name: "message")
  String? message;
  @JsonKey(name: "data")
  T? data;
  @JsonKey(name: "vehicleDataList")
  List<VehicleData>? vehicleDataList;

  ResponseModel({this.status, this.code, this.message, this.data});

  factory ResponseModel.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$ResponseModelFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$ResponseModelToJson(this, toJsonT);
}
