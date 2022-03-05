
enum VehicleStatus {

  OVERSPEED("ovr","Overspeed")
RUNNING("rng","Ignition on"),
IDLE("idl","Idle"),
STOPPED("stp","Ignition off"),
UNREACHABLE("unr","Unreachable"),
NEW("new","New"),
INACTIVE("inactive","inactive"),
//for report
// add a space after on because it is conflicting from running in reports.
STARTED("srt","Ignition  on"),
AC_ON("acon","Ac on"),
AC_OFF("acoff","Ac off");

  String dbValue,uiValue;

VehicleStatus(this.dbValue,this,uiValue);


 String getDbValue() {
  return dbValue;
}



 void setDbValue(String dbValue) {
  this.dbValue = dbValue;
}



 String getUiValue() {
  return uiValue;
}


 void setUiValue(String uiValue) {
  this.uiValue = uiValue;
}


 static VehicleStatus getByUiValue(String uiVal)
{
  for(VehicleStatus vehicleStatus:VehicleStatus.values())
  {
  if(vehicleStatus.getUiValue().equalsIgnoreCase(uiVal))
  {
  return vehicleStatus;
  }
  }
  //Returning default value
  return null;
}
 static VehicleStatus getByDbValue(String dbVal)
{
  for(VehicleStatus vehicleStatus:VehicleStatus.values())
  {
  if(vehicleStatus.getDbValue().equalsIgnoreCase(dbVal))
  {
  return vehicleStatus;
  }
  }
  //Returning default value
  return null;
}

}
