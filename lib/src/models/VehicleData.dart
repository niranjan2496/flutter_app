

import 'package:json_annotation/json_annotation.dart';

import 'TerminalPacketMeta.dart';
part 'VehicleData.g.dart';

@JsonSerializable()
class VehicleData{
  String? vehicleId;
  String? ouid;
  double? lat;
  double? lng;
  bool? ignition;
  int? speed;
  String? alias;
  bool? ac;
  String? driverName;
  String? driverPhoneNo;
  int? direction;
  String? vehicleNo;
  String? iemi;
  String? address;
  String? lastUpdated;
  String? state;
  String? elapsedTime;
  String? simNo;
  String? deviceType;
  //    int position;
  TerminalPacketMeta? terminalPacketMeta;
  String? since;
  String? devicePassword;
  String? company;
  String? transporterUsername;
  String? vehicleType;
  int? todayKm;
  String? todayDu;
  String? poi;
  bool? lock;
  double? odometer;
  String? distanceFromLastStop;
  String? durationFromLastStop;
  String? stoppageHaltTime;
  bool? lockEnable;
  bool? acCompatible;
  bool? lockFromApi;
  bool? active;
  double? mileage;
  String? remark;
  String? extraRemark;
  String? loadingStatus;
  int? overspeed;
  bool? analog;
  double? fuelRemain;
  double? todayFuelConsumed;


  VehicleData(
      this.vehicleId,
      this.ouid,
      this.lat,
      this.lng,
      this.ignition,
      this.speed,
      this.alias,
      this.ac,
      this.driverName,
      this.driverPhoneNo,
      this.direction,
      this.vehicleNo,
      this.iemi,
      this.address,
      this.lastUpdated,
      this.state,
      this.elapsedTime,
      this.simNo,
      this.deviceType,
      this.terminalPacketMeta,
      this.since,
      this.devicePassword,
      this.company,
      this.transporterUsername,
      this.vehicleType,
      this.todayKm,
      this.todayDu,
      this.poi,
      this.lock,
      this.odometer,
      this.distanceFromLastStop,
      this.durationFromLastStop,
      this.stoppageHaltTime,
      this.lockEnable,
      this.acCompatible,
      this.lockFromApi,
      this.active,
      this.mileage,
      this.remark,
      this.extraRemark,
      this.loadingStatus,
      this.overspeed,
      this.analog,
      this.fuelRemain,
      this.todayFuelConsumed);

  factory VehicleData.fromJson(Map<String, dynamic> json) => _$VehicleDataFromJson(json);
  Map<String, dynamic> toJson() => _$VehicleDataToJson(this);
}