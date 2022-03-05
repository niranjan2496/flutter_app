
import 'package:json_annotation/json_annotation.dart';
part 'LoginRequestData.g.dart';

@JsonSerializable()
class LoginRequestData{
  String? username;
  String? password;
  LoginRequestData({ this.username, this.password});

  factory LoginRequestData.fromJson(Map<String, dynamic> json) => _$LoginRequestDataFromJson(json);
  Map<String, dynamic> toJson() => _$LoginRequestDataToJson(this);
}