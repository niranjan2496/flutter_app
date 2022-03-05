import 'package:json_annotation/json_annotation.dart';
part 'ApiFieldError.g.dart';

@JsonSerializable()
class ApiFieldError {
  @JsonKey(name: "field")
  String? field;
  @JsonKey(name: "message")
  String? message;


  ApiFieldError(this.field, this.message);

  factory ApiFieldError.fromJson(Map<String, dynamic> json) => _$ApiFieldErrorFromJson(json);
  Map<String, dynamic> toJson() => _$ApiFieldErrorToJson(this);
}