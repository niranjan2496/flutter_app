// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'OtpRequestData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OtpRequestData _$OtpRequestDataFromJson(Map<String, dynamic> json) {
  return OtpRequestData(
    json['username'] as String?,
    json['mobileNumber'] as String?,
    json['smsApi'] as String?,
    json['otp'] as String?,
  );
}

Map<String, dynamic> _$OtpRequestDataToJson(OtpRequestData instance) =>
    <String, dynamic>{
      'username': instance.username,
      'mobileNumber': instance.mobileNumber,
      'smsApi': instance.smsApi,
      'otp': instance.otp,
    };
