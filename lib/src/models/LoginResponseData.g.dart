// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'LoginResponseData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponseData _$LoginResponseDataFromJson(Map<String, dynamic> json) {
  return LoginResponseData(
    json['type'] as String?,
    json['token'] as String?,
    json['username'] as String?,
    (json['authorities'] as List<dynamic>?)?.map((e) => e as String).toList(),
    json['otpData'] == null
        ? null
        : OtpRequestData.fromJson(json['otpData'] as Map<String, dynamic>),
    json['roleName'] as String?,
    json['phAuth'] as bool?,
    json['rootOwner'] as String?,
    json['addressLanguage'] as String?,
    json['userClientData'] == null
        ? null
        : UserClientData.fromJson(
            json['userClientData'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$LoginResponseDataToJson(LoginResponseData instance) =>
    <String, dynamic>{
      'type': instance.type,
      'token': instance.token,
      'username': instance.username,
      'authorities': instance.authorities,
      'otpData': instance.otpData,
      'roleName': instance.roleName,
      'phAuth': instance.phAuth,
      'rootOwner': instance.rootOwner,
      'addressLanguage': instance.addressLanguage,
      'userClientData': instance.userClientData,
    };
