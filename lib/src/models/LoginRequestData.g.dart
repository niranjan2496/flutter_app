// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'LoginRequestData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginRequestData _$LoginRequestDataFromJson(Map<String, dynamic> json) {
  return LoginRequestData(
    username: json['username'] as String?,
    password: json['password'] as String?,
  );
}

Map<String, dynamic> _$LoginRequestDataToJson(LoginRequestData instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };
