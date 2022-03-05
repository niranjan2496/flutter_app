// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TerminalPacketMeta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TerminalPacketMeta _$TerminalPacketMetaFromJson(Map<String, dynamic> json) {
  return TerminalPacketMeta(
    json['batteryConnected'] as bool?,
    json['battery'] as int?,
    json['gsmSignals'] as int?,
    json['satellites'] as int?,
    json['pLoc'],
    json['panic'] as bool?,
    json['parked'] as bool?,
    json['tempered'] as bool?,
  );
}

Map<String, dynamic> _$TerminalPacketMetaToJson(TerminalPacketMeta instance) =>
    <String, dynamic>{
      'batteryConnected': instance.batteryConnected,
      'battery': instance.battery,
      'gsmSignals': instance.gsmSignals,
      'satellites': instance.satellites,
      'pLoc': instance.pLoc,
      'panic': instance.panic,
      'parked': instance.parked,
      'tempered': instance.tempered,
    };
