
import 'package:json_annotation/json_annotation.dart';
part 'UserClientData.g.dart';

@JsonSerializable()
class UserClientData{
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "email")
  String? email;
  @JsonKey(name: "phoneNo")
  String? phoneNo;
  @JsonKey(name: "companyName")
  String? companyName;
  @JsonKey(name: "username")
  String? username;
  @JsonKey(name: "imgUrl")
  String? imgUrl;
  @JsonKey(name: "roleName")
  String? roleName;
  @JsonKey(name: "lockEnable")
  bool? lockEnable;
  @JsonKey(name: "changePassword")
  bool? changePassword;
  @JsonKey(name: "active")
  bool? active;
  @JsonKey(name: "domain")
  String? domain;
  @JsonKey(name: "address")
  String? address;

  UserClientData(
      this.name,
      this.email,
      this.phoneNo,
      this.companyName,
      this.username,
      this.imgUrl,
      this.roleName,
      this.lockEnable,
      this.changePassword,
      this.active,
      this.domain,
      this.address);

  factory UserClientData.fromJson(Map<String, dynamic> json) => _$UserClientDataFromJson(json);
  Map<String, dynamic> toJson() => _$UserClientDataToJson(this);


}