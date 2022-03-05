
import 'package:dio/dio.dart';
import 'package:flutter_app/src/exception/ApiErrorModel.dart';
import 'package:json_annotation/json_annotation.dart';
part 'TrackobitException.g.dart';

@JsonSerializable()
class TrackobitException implements Exception{

  @JsonKey(name: "apiErrorModel")
  ApiErrorModel? apiErrorModel;

  TrackobitException(this.apiErrorModel);


  factory TrackobitException.fromJson(Map<String, dynamic> json) => _$TrackobitExceptionFromJson(json);
  Map<String, dynamic> toJson() => _$TrackobitExceptionToJson(this);

  ApiErrorModel? get getApiErrorModel{
    return this.apiErrorModel;
  }
}