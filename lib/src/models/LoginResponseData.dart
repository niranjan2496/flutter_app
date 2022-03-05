
import 'package:json_annotation/json_annotation.dart';

import 'OtpRequestData.dart';
import 'UserClientData.dart';
part 'LoginResponseData.g.dart';

@JsonSerializable()
class LoginResponseData{

  @JsonKey(name: "type")
   String? type;
  @JsonKey(name: "token")
   String? token;
  @JsonKey(name: "username")
   String? username;
  @JsonKey(name: "authorities")
   List<String>? authorities;
  @JsonKey(name: "otpData")
   OtpRequestData? otpData;
  @JsonKey(name: "roleName")
   String? roleName;
  @JsonKey(name: "phAuth")
   bool? phAuth;
  @JsonKey(name: "rootOwner")
   String? rootOwner;
  @JsonKey(name: "addressLanguage")
   String? addressLanguage;
  @JsonKey(name: "userClientData")
   UserClientData? userClientData;

  LoginResponseData(
      this.type,
      this.token,
      this.username,
      this.authorities,
      this.otpData,
      this.roleName,
      this.phAuth,
      this.rootOwner,
      this.addressLanguage,
      this.userClientData);

  factory LoginResponseData.fromJson(Map<String, dynamic> json) => _$LoginResponseDataFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseDataToJson(this);
}