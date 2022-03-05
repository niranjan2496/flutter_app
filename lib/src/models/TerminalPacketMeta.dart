
import 'package:json_annotation/json_annotation.dart';
part 'TerminalPacketMeta.g.dart';

@JsonSerializable()
class TerminalPacketMeta{
  bool? batteryConnected;
  int? battery;
  int? gsmSignals;
  int? satellites;
  var pLoc;
  bool? panic;
  bool? parked;
  bool? tempered;

  TerminalPacketMeta(this.batteryConnected, this.battery, this.gsmSignals,
      this.satellites, this.pLoc, this.panic, this.parked, this.tempered);

  factory TerminalPacketMeta.fromJson(Map<String, dynamic> json) => _$TerminalPacketMetaFromJson(json);
  Map<String, dynamic> toJson() => _$TerminalPacketMetaToJson(this);
}