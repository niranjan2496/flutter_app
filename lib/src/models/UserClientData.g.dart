// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'UserClientData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserClientData _$UserClientDataFromJson(Map<String, dynamic> json) {
  return UserClientData(
    json['name'] as String?,
    json['email'] as String?,
    json['phoneNo'] as String?,
    json['companyName'] as String?,
    json['username'] as String?,
    json['imgUrl'] as String?,
    json['roleName'] as String?,
    json['lockEnable'] as bool?,
    json['changePassword'] as bool?,
    json['active'] as bool?,
    json['domain'] as String?,
    json['address'] as String?,
  );
}

Map<String, dynamic> _$UserClientDataToJson(UserClientData instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phoneNo': instance.phoneNo,
      'companyName': instance.companyName,
      'username': instance.username,
      'imgUrl': instance.imgUrl,
      'roleName': instance.roleName,
      'lockEnable': instance.lockEnable,
      'changePassword': instance.changePassword,
      'active': instance.active,
      'domain': instance.domain,
      'address': instance.address,
    };
