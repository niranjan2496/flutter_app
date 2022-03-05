// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ApiFieldError.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiFieldError _$ApiFieldErrorFromJson(Map<String, dynamic> json) {
  return ApiFieldError(
    json['field'] as String?,
    json['message'] as String?,
  );
}

Map<String, dynamic> _$ApiFieldErrorToJson(ApiFieldError instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };
