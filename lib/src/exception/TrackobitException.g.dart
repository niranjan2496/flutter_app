// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TrackobitException.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrackobitException _$TrackobitExceptionFromJson(Map<String, dynamic> json) {
  return TrackobitException(
    json['apiErrorModel'] == null
        ? null
        : ApiErrorModel.fromJson(json['apiErrorModel'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TrackobitExceptionToJson(TrackobitException instance) =>
    <String, dynamic>{
      'apiErrorModel': instance.apiErrorModel,
    };
