// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ApiErrorModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiErrorModel _$ApiErrorModelFromJson(Map<String, dynamic> json) {
  return ApiErrorModel(
    json['status'] as String?,
    json['code'] as int,
    json['message'] as String?,
    (json['errors'] as List<dynamic>?)
        ?.map((e) => ApiFieldError.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$ApiErrorModelToJson(ApiErrorModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'message': instance.message,
      'errors': instance.errors,
    };
