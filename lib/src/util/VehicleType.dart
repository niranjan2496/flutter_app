
enum VehicleType {

  Sonographic("Sonographic"),
Jeep("Jeep"),
Truck("Truck"),
Trailer("Trailer"),
Tempo("Tempo"),
Tractor("Tractor"),
PersonalCar("Personal Car"),
Taxi("Taxi"),
Bike("Bike"),
SchoolBus("School Bus"),
PublicBus("Public Bus"),
Ambulance("Ambulance"),
ThreeWheeler("3 Wheeler"),
Machinery("Machinery"),
Mobile("Mobile"),
Asset("Asset"),
Tanker("Tanker"),
Pickup("Pickup"),
Garbage("Garbage"),
Dumper("Dumper"),
Mixer("Mixer"),
Crane("Crane"),
Bulldozer("Bulldozer");
//@formatter:on

private String uiValue;

private VehicleType(String type) {
  this.uiValue = type;
}

private String getUiValue() {
  return uiValue;
}

public static VehicleType getBytype(String uiValue)
{
  for(VehicleType vehicleType:VehicleType.values())
  {
  if(vehicleType.getUiValue().equalsIgnoreCase(uiValue))
  {
  return vehicleType;
  }
  }
  //Returning default value
  return Truck;
}
public static ArrayList<String> getUiValues(){
  ArrayList<String> uiValues = new ArrayList<>();
  for (VehicleType vehicleType : VehicleType.values()) {
  uiValues.add(vehicleType.getUiValue());
  }
  return uiValues;
}


}