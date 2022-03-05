

import 'package:permission_handler/permission_handler.dart';

class PermissionsService {
  Future<bool> hasLocationPermission() async {
    bool status=await Permission.locationAlways.request().isGranted;
    return status;
  }
  Future<bool> hasBtryOptimizationPermission() async {
    bool status=await Permission.ignoreBatteryOptimizations.request().isGranted;
    return status;
  }


}