
import 'package:json_annotation/json_annotation.dart';
part 'OtpRequestData.g.dart';

@JsonSerializable()
class OtpRequestData {
  @JsonKey(name: "username")
   String? username;
  @JsonKey(name: "mobileNumber")
   String? mobileNumber;
  @JsonKey(name: "smsApi")
   String? smsApi;
  @JsonKey(name: "otp")
   String? otp;

   OtpRequestData(this.username, this.mobileNumber, this.smsApi, this.otp);

  factory OtpRequestData.fromJson(Map<String, dynamic> json) => _$OtpRequestDataFromJson(json);
  Map<String, dynamic> toJson() => _$OtpRequestDataToJson(this);
}