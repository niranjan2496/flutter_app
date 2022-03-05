
import 'package:flutter_app/src/models/ApiFieldError.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ApiErrorModel.g.dart';

@JsonSerializable()
class ApiErrorModel {
    @JsonKey(name: "status")
    String? status;
    @JsonKey(name: "code")
    int code=0;
    @JsonKey(name: "message")
    String? message;
    @JsonKey(name: "errors")
    List<ApiFieldError>? errors;

    ApiErrorModel(this.status, this.code, this.message,this.errors);

    factory ApiErrorModel.fromJson(Map<String, dynamic> json) => _$ApiErrorModelFromJson(json);
    Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);
}