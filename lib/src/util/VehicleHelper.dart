

class VehicleHelper {
  public static int getLiveVehicleIcon(VehicleStatus vehicleStatus, VehicleType vehicleType) {


    switch (vehicleType) {

      case Sonographic:
      case Jeep:
      case Truck:
      case Trailer:
      case Tempo:
        return getLiveTruckIconByState(vehicleStatus);
      case Tractor:
        return getLiveTractorIconByState(vehicleStatus);
      case PersonalCar:
      case Taxi:
        return getLiveCarIconByState(vehicleStatus);
      case Bike:
        return getLiveBikeIconByState(vehicleStatus);
      case SchoolBus:
        return getLiveSchoolBusIconByState(vehicleStatus);
      case PublicBus:
        return getLiveBusIconByState(vehicleStatus);
      case Ambulance:
        return getLiveAmbulanceIconByState(vehicleStatus);
      case ThreeWheeler:
        return getLiveThreeWheelerIconByState(vehicleStatus);
      case Bulldozer:
      case Machinery:
        return getLiveBuldozerIconByState(vehicleStatus);
      case Asset:
        return getLiveAssetIconBySate(vehicleStatus);
      case Pickup:
        return getLivePickupIconBySate(vehicleStatus);
      case Tanker:
        return getLiveTankerIconBySate(vehicleStatus);
      case Garbage:
        return getLiveTruckIconByState(vehicleStatus);
      case Dumper:
        return getLiveDumperIconByState(vehicleStatus);
      case Mixer:
        return getLiveMixerIconByState(vehicleStatus);
      case Crane:
        return getLiveCraneIconByState(vehicleStatus);

      default:
        return getLiveTruckIconByState(vehicleStatus);

    }

  }

  public static int getVehicleTypeIcon(VehicleStatus vehicleStatus, VehicleType vehicleType) {

    switch (vehicleType) {

      case Sonographic:
      case Jeep:
      case Truck:
      case Trailer:
      case Tempo:
        return getTruckIconByState(vehicleStatus);
      case Tractor:
        return getTractorIconByState(vehicleStatus);
      case PersonalCar:
      case Taxi:
        return getCarIconByState(vehicleStatus);
      case Bike:
        return getBikeIconByState(vehicleStatus);
      case SchoolBus:
        return getSchoolBusIconByState(vehicleStatus);
      case PublicBus:
        return getBusIconByState(vehicleStatus);
      case Ambulance:
        return getAmbulanceIconByState(vehicleStatus);
      case ThreeWheeler:
        return getThreeWheelerIconByState(vehicleStatus);
      case Bulldozer:
      case Machinery:
        return getBuldozerIconByState(vehicleStatus);
      case Asset:
        return getAssetIconByState(vehicleStatus);
      case Pickup:
        return getPickupIconByState(vehicleStatus);
      case Tanker:
        return getTankerIconByState(vehicleStatus);
      case Garbage:
        return getGarbageIconByState(vehicleStatus);
      case Dumper:
        return getDumperIconByState(vehicleStatus);
      case Mixer:
        return getMixerIconByState(vehicleStatus);
      case Crane:
        return getCraneIconByState(vehicleStatus);
      default:
        return getTruckIconByState(vehicleStatus);

    }

  }

  public static int getLiveTruckIconByState(VehicleStatus vehicleStatus) {

    switch (vehicleStatus) {
      case STOPPED:
        return R.drawable.live_truck_stop;
      case UNREACHABLE:
        return R.drawable.live_truck_inactive;
      case OVERSPEED:
        return R.drawable.live_truck_overspeed;
      case RUNNING:
        return R.drawable.live_truck_running;
      case IDLE:
        return R.drawable.live_truck_idle;
      case NEW:
        return R.drawable.live_truck_nodata;
    }

    return 0;
  }
  public static int getLiveDumperIconByState(VehicleStatus vehicleStatus) {

    switch (vehicleStatus) {
      case STOPPED:
        return R.drawable.live_dumper_stop;
      case UNREACHABLE:
        return R.drawable.live_dumper_inactive;
      case OVERSPEED:
        return R.drawable.live_dumper_overspeed;
      case RUNNING:
        return R.drawable.live_dumper_running;
      case IDLE:
        return R.drawable.live_dumper_idle;
      case NEW:
        return R.drawable.live_dumper_nodata;
    }

    return 0;
  }
  public static int getLiveMixerIconByState(VehicleStatus vehicleStatus) {

    switch (vehicleStatus) {
      case STOPPED:
        return R.drawable.live_mixer_stop;
      case UNREACHABLE:
        return R.drawable.live_mixer_inactive;
      case OVERSPEED:
        return R.drawable.live_mixer_overspeed;
      case RUNNING:
        return R.drawable.live_mixer_running;
      case IDLE:
        return R.drawable.live_mixer_idle;
      case NEW:
        return R.drawable.live_mixer_nodata;
    }

    return 0;
  }
  public static int getLiveCraneIconByState(VehicleStatus vehicleStatus) {

    switch (vehicleStatus) {
      case STOPPED:
        return R.drawable.live_crane_stop;
      case UNREACHABLE:
        return R.drawable.live_crane_inactive;
      case OVERSPEED:
        return R.drawable.live_crane_overspeed;
      case RUNNING:
        return R.drawable.live_crane_running;
      case IDLE:
        return R.drawable.live_crane_idle;
      case NEW:
        return R.drawable.live_crane_nodata;
    }

    return 0;
  }

  public static int getLiveBusIconByState(VehicleStatus vehicleStatus) {

    switch (vehicleStatus) {
      case STOPPED:
        return R.drawable.live_bus_stop;
      case UNREACHABLE:
        return R.drawable.live_bus_inactive;
      case OVERSPEED:
        return R.drawable.live_bus_overspeed;
      case RUNNING:
        return R.drawable.live_bus_running;
      case IDLE:
        return R.drawable.live_bus_idle;
      case NEW:
        return R.drawable.live_bus_nodata;
    }

    return 0;
  }


  public static int getLiveCarIconByState(VehicleStatus vehicleStatus) {

    switch (vehicleStatus) {
      case STOPPED:
        return R.drawable.live_car_stop;
      case UNREACHABLE:
        return R.drawable.live_car_inactive;
      case OVERSPEED:
        return R.drawable.live_car_overspeed;
      case RUNNING:
        return R.drawable.live_car_running;
      case IDLE:
        return R.drawable.live_car_idle;
      case NEW:
        return R.drawable.live_car_nodata;
    }

    return 0;
  }

  public static int getLiveAmbulanceIconByState(VehicleStatus vehicleStatus) {
    switch (vehicleStatus) {
      case STOPPED:
        return R.drawable.live_ambulance_stop;
      case UNREACHABLE:
        return R.drawable.live_ambulance_inactive;
      case OVERSPEED:
        return R.drawable.live_ambulance_overspeed;
      case RUNNING:
        return R.drawable.live_ambulance_running;
      case IDLE:
        return R.drawable.live_ambulance_idle;
      case NEW:
        return R.drawable.live_ambulance_nodata;
    }
    return 0;
  }

  public static int getLiveSchoolBusIconByState(VehicleStatus vehicleStatus)
  {
    switch (vehicleStatus)
    {
      case STOPPED:
        return R.drawable.live_school_stop;
      case UNREACHABLE:
        return R.drawable.live_school_inactive;
      case OVERSPEED:
        return R.drawable.live_school_overspeed;
      case RUNNING:
        return R.drawable.live_school_running;
      case IDLE:
        return R.drawable.live_school_idle;
      case NEW:
        return R.drawable.live_school_nodata;

    }
    return 0;
  }

  public static int getLiveTractorIconByState(VehicleStatus vehicleStatus)
  {

    switch (vehicleStatus) {

      case STOPPED:
        return R.drawable.live_tractor_stop;
      case UNREACHABLE:
        return R.drawable.live_tractor_inactive;
      case OVERSPEED:
        return R.drawable.live_tractor_overspeed;
      case RUNNING:
        return R.drawable.live_tractor_running;
      case IDLE:
        return R.drawable.live_tractor_idle;
      case NEW:
        return R.drawable.live_tractor_nodata;
    }
    return 0;
  }


  public static int getLiveBuldozerIconByState(VehicleStatus vehicleStatus)
  {
    switch (vehicleStatus)
    {
      case STOPPED:
        return R.drawable.live_buldozer_stop;
      case UNREACHABLE:
        return R.drawable.live_buldozer_inactive;
      case OVERSPEED:
        return R.drawable.live_buldozer_overspeed;
      case RUNNING:
        return R.drawable.live_buldozer_running;
      case IDLE:
        return R.drawable.live_buldozer_idle;
      case NEW:
        return R.drawable.live_buldozer_nodata;
    }
    return 0;
  }

  public static int getLiveAssetIconBySate(VehicleStatus vehicleStatus)
  {
    switch (vehicleStatus)
    {
      case STOPPED:
        return R.drawable.live_asset_stop;
      case UNREACHABLE:
        return R.drawable.live_asset_inactive;
      case OVERSPEED:
        return R.drawable.live_asset_overspeed;
      case RUNNING:
        return R.drawable.live_asset_running;
      case IDLE:
        return R.drawable.live_asset_idle;
      case NEW:
        return R.drawable.live_asset_nodata;
    }
    return 0;
  }
  public static int getLivePickupIconBySate(VehicleStatus vehicleStatus)
  {
    switch (vehicleStatus)
    {
      case STOPPED:
        return R.drawable.live_pickup_stop;
      case UNREACHABLE:
        return R.drawable.live_pickup_inactive;
      case OVERSPEED:
        return R.drawable.live_pickup_overspeed;
      case RUNNING:
        return R.drawable.live_pickup_running;
      case IDLE:
        return R.drawable.live_pickup_idle;
      case NEW:
        return R.drawable.live_pickup_nodata;
    }
    return 0;
  }
  public static int getLiveTankerIconBySate(VehicleStatus vehicleStatus)
  {
    switch (vehicleStatus)
    {
      case STOPPED:
        return R.drawable.live_tanker_stop;
      case UNREACHABLE:
        return R.drawable.live_tanker_inactive;
      case OVERSPEED:
        return R.drawable.live_tanker_overspeed;
      case RUNNING:
        return R.drawable.live_tanker_running;
      case IDLE:
        return R.drawable.live_tanker_idle;
      case NEW:
        return R.drawable.live_tanker_nodata;
    }
    return 0;
  }
  public static int getLiveBikeIconByState(VehicleStatus vehicleStatus) {

    switch (vehicleStatus) {
      case STOPPED:
        return R.drawable.live_bike_stop;
      case UNREACHABLE:
        return R.drawable.live_bike_inactive;
      case OVERSPEED:
        return R.drawable.live_bike_overspeed;
      case RUNNING:
        return R.drawable.live_bike_running;
      case IDLE:
        return R.drawable.live_bike_idle;
      case NEW:
        return R.drawable.live_bike_nodata;
    }

    return 0;
  }

  public static int getLiveThreeWheelerIconByState(VehicleStatus vehicleStatus) {

    switch (vehicleStatus) {
      case STOPPED:
        return R.drawable.live_erickshaw_stop;
      case UNREACHABLE:
        return R.drawable.live_erickshaw_inactive;
      case OVERSPEED:
        return R.drawable.live_erickshaw_overspeed;
      case RUNNING:
        return R.drawable.live_erickshaw_running;
      case IDLE:
        return R.drawable.live_erickshaw_idle;
      case NEW:
        return R.drawable.live_erickshaw_nodata;
    }

    return 0;
  }


  public static int getThreeWheelerIconByState(VehicleStatus vehicleStatus) {

    switch (vehicleStatus) {
      case STOPPED:
        return R.drawable.erickshaw_stop;
      case UNREACHABLE:
        return R.drawable.erickshaw_inactive;
      case OVERSPEED:
        return R.drawable.erickshaw_overspeed;
      case RUNNING:
        return R.drawable.erickshaw_running;
      case IDLE:
        return R.drawable.erickshaw_idle;
      case NEW:
        return R.drawable.erickshaw_nodata;
      case INACTIVE:
        return R.drawable.erickshaw_nodata;
    }

    return 0;
  }

  public static int getBusIconByState(VehicleStatus vehicleStatus) {
    switch (vehicleStatus) {
      case STOPPED:
        return R.drawable.bus_stop;
      case UNREACHABLE:
        return R.drawable.bus_inactive;
      case OVERSPEED:
        return R.drawable.bus_overspeed;
      case RUNNING:
        return R.drawable.bus_running;
      case IDLE:
        return R.drawable.bus_idle;
      case NEW:
        return R.drawable.bus_nodata;
      case INACTIVE:
        return R.drawable.bus_nodata;
    }

    return 0;
  }

  public static int getTruckIconByState(VehicleStatus vehicleStatus) {
    switch (vehicleStatus) {
      case STOPPED:
        return R.drawable.truck_stop;
      case UNREACHABLE:
        return R.drawable.truck_inactive;
      case OVERSPEED:
        return R.drawable.truck_overspeed;
      case RUNNING:
        return R.drawable.truck_running;
      case IDLE:
        return R.drawable.truck_idle;
      case NEW:
        return R.drawable.truck_nodata;
      case INACTIVE:
        return R.drawable.truck_nodata;
    }

    return 0;
  }

  public static int getCarIconByState(VehicleStatus vehicleStatus) {
    switch (vehicleStatus) {
      case STOPPED:
        return R.drawable.car_stop;
      case UNREACHABLE:
        return R.drawable.car_inactive;
      case OVERSPEED:
        return R.drawable.car_overspeed;
      case RUNNING:
        return R.drawable.car_running;
      case IDLE:
        return R.drawable.car_idle;
      case NEW:
        return R.drawable.car_nodata;
      case INACTIVE:
        return R.drawable.car_nodata;
    }

    return 0;
  }

  public static int getBikeIconByState(VehicleStatus vehicleStatus) {
    switch (vehicleStatus) {
      case STOPPED:
        return R.drawable.bike_stop;
      case UNREACHABLE:
        return R.drawable.bike_inactive;
      case OVERSPEED:
        return R.drawable.bike_overspeed;
      case RUNNING:
        return R.drawable.bike_running;
      case IDLE:
        return R.drawable.bike_idle;
      case NEW:
        return R.drawable.bike_nodata;
      case INACTIVE:
        return R.drawable.bike_nodata;
    }

    return 0;
  }

  public static int getAmbulanceIconByState(VehicleStatus vehicleStatus)
  {
    switch (vehicleStatus)
    {
      case STOPPED:
        return R.drawable.ambulance_stop;
      case UNREACHABLE:
        return R.drawable.ambulance_inactive;
      case OVERSPEED:
        return R.drawable.ambulance_overspeed;
      case RUNNING:
        return R.drawable.ambulance_running;
      case IDLE:
        return R.drawable.ambulance_idle;
      case NEW:
        return R.drawable.ambulance_nodata;
      case INACTIVE:
        return R.drawable.ambulance_nodata;
    }
    return 0;
  }

  public static int getSchoolBusIconByState(VehicleStatus vehicleStatus)
  {
    switch (vehicleStatus)
    {
      case STOPPED:
        return R.drawable.school_bus_stop;
      case UNREACHABLE:
        return R.drawable.school_bus_inactive;
      case OVERSPEED:
        return R.drawable.school_bus_overspeed;
      case RUNNING:
        return R.drawable.school_bus_running;
      case IDLE:
        return R.drawable.school_bus_idle;
      case NEW:
        return R.drawable.school_bus_nodata;
      case INACTIVE:
        return R.drawable.school_bus_nodata;

    }
    return 0;
  }

  public static int getTractorIconByState(VehicleStatus vehicleStatus)
  {

    switch (vehicleStatus) {

      case STOPPED:
        return R.drawable.farm_tractor_stop;
      case UNREACHABLE:
        return R.drawable.farm_tractor_inactive;
      case OVERSPEED:
        return R.drawable.farm_tractor_overspeed;
      case RUNNING:
        return R.drawable.farm_tractor_running;
      case IDLE:
        return R.drawable.farm_tractor_idle;

      case NEW:
        return R.drawable.farm_tractor_nodata;
      case INACTIVE:
        return R.drawable.farm_tractor_nodata;
    }
    return 0;
  }

  public static int getBuldozerIconByState(VehicleStatus vehicleStatus)
  {
    switch (vehicleStatus)
    {
      case STOPPED:
        return R.drawable.buldozer_stop;
      case UNREACHABLE:
        return R.drawable.buldozer_inactive;
      case OVERSPEED:
        return R.drawable.buldozer_overspeed;
      case RUNNING:
        return R.drawable.buldozer_running;
      case IDLE:
        return R.drawable.buldozer_idle;
      case NEW:
        return R.drawable.buldozer_nodata;
      case INACTIVE:
        return R.drawable.buldozer_nodata;
    }
    return 0;
  }

  public static int getAssetIconByState(VehicleStatus vehicleStatus)
  {
    switch (vehicleStatus)
    {
      case STOPPED:
        return R.drawable.asset_stop;
      case UNREACHABLE:
        return R.drawable.asset_inactive;
      case OVERSPEED:
        return R.drawable.asset_overspeed;
      case RUNNING:
        return R.drawable.asset_running;
      case IDLE:
        return R.drawable.asset_idle;
      case NEW:
        return R.drawable.asset_nodata;
      case INACTIVE:
        return R.drawable.asset_nodata;
    }
    return 0;
  }
  public static int getPickupIconByState(VehicleStatus vehicleStatus)
  {
    switch (vehicleStatus)
    {
      case STOPPED:
        return R.drawable.pickup_stop;
      case UNREACHABLE:
        return R.drawable.pickup_inactive;
      case OVERSPEED:
        return R.drawable.pickup_overspeed;
      case RUNNING:
        return R.drawable.pickup_running;
      case IDLE:
        return R.drawable.pickup_idle;
      case NEW:
        return R.drawable.pickup_nodata;
      case INACTIVE:
        return R.drawable.pickup_nodata;
    }
    return 0;
  }
  public static int getTankerIconByState(VehicleStatus vehicleStatus)
  {
    switch (vehicleStatus)
    {
      case STOPPED:
        return R.drawable.tanker_stop;
      case UNREACHABLE:
        return R.drawable.tanker_inactive;
      case OVERSPEED:
        return R.drawable.tanker_overspeed;
      case RUNNING:
        return R.drawable.tanker_running;
      case IDLE:
        return R.drawable.tanker_idle;
      case NEW:
        return R.drawable.tanker_nodata;
      case INACTIVE:
        return R.drawable.tanker_nodata;
    }
    return 0;
  }
  public static int getGarbageIconByState(VehicleStatus vehicleStatus)
  {
    switch (vehicleStatus)
    {
      case STOPPED:
        return R.drawable.garbage_stop;
      case UNREACHABLE:
        return R.drawable.garbage_inactive;
      case OVERSPEED:
        return R.drawable.garbage_inactive;
      case RUNNING:
        return R.drawable.garbage_running;
      case IDLE:
        return R.drawable.garbage_idle;
      case NEW:
        return R.drawable.garbage_nodata;
      case INACTIVE:
        return R.drawable.garbage_nodata;
    }
    return 0;
  }
  public static int getDumperIconByState(VehicleStatus vehicleStatus)
  {
    switch (vehicleStatus)
    {
      case STOPPED:
        return R.drawable.dumper_stop;
      case UNREACHABLE:
        return R.drawable.dumper_inactive;
      case OVERSPEED:
        return R.drawable.dumper_overspeed;
      case RUNNING:
        return R.drawable.dumper_running;
      case IDLE:
        return R.drawable.dumper_idle;
      case NEW:
        return R.drawable.dumper_nodata;
      case INACTIVE:
        return R.drawable.dumper_nodata;
    }
    return 0;
  }
  public static int getMixerIconByState(VehicleStatus vehicleStatus)
  {
    switch (vehicleStatus)
    {
      case STOPPED:
        return R.drawable.mixer_stop;
      case UNREACHABLE:
        return R.drawable.mixer_inactive;
      case OVERSPEED:
        return R.drawable.mixer_overspeed;
      case RUNNING:
        return R.drawable.mixer_running;
      case IDLE:
        return R.drawable.mixer_idle;
      case NEW:
        return R.drawable.mixer_nodata;
      case INACTIVE:
        return R.drawable.mixer_nodata;
    }
    return 0;
  }
  public static int getCraneIconByState(VehicleStatus vehicleStatus)
  {
    switch (vehicleStatus)
    {
      case STOPPED:
        return R.drawable.crane_stop;
      case UNREACHABLE:
        return R.drawable.crane_inactive;
      case OVERSPEED:
        return R.drawable.crane_overspeed;
      case RUNNING:
        return R.drawable.crane_running;
      case IDLE:
        return R.drawable.crane_idle;
      case NEW:
        return R.drawable.crane_nodata;
      case INACTIVE:
        return R.drawable.crane_nodata;
    }
    return 0;
  }

  public static int getStatusColor(Context context, VehicleStatus vehicleStatus) {

    if (vehicleStatus != null) {
      switch (vehicleStatus) {
        case STOPPED:
          return context.getResources().getColor(R.color.n_red_dot);
        case UNREACHABLE:
          return context.getResources().getColor(R.color.n_blue_dot);
        case OVERSPEED:
          return context.getResources().getColor(R.color.n_orange_dot);
        case RUNNING:
          return context.getResources().getColor(R.color.n_green_dot);
        case IDLE:
          return context.getResources().getColor(R.color.n_yellow_dot);
        case NEW:
          return context.getResources().getColor(R.color.n_grey_dot);


        default:
          return context.getResources().getColor(R.color.n_green_dot);
      }
    } else {
      return R.color.n_yellow_dot;
    }
  }

  public static int getVehicleTypeIconForReport(VehicleType vehicleType) {

    switch (vehicleType) {
      case Sonographic:
      case Jeep:
      case Truck:
      case Trailer:
      case Tempo:
        return R.drawable.travel_report_truck;
      case Tractor:
        return R.drawable.travel_report_farm_tractor;
      case PersonalCar:
      case Taxi:
        return R.drawable.travel_report_car;
      case Bike:
        return R.drawable.travel_report_bike;
      case SchoolBus:
        return R.drawable.travel_report_school_bus;
      case PublicBus:
        return R.drawable.travel_report_bus;
      case Ambulance:
        return R.drawable.travel_report_ambulance;
      case ThreeWheeler:
        return R.drawable.travel_report_erickshaw;
      case Bulldozer:
      case Machinery:
        return R.drawable.travel_report_buldozer;
      case Tanker:
        return R.drawable.travel_report_tanker;
      case Crane:
        return R.drawable.travel_report_crane;
      case Pickup:
        return R.drawable.travel_report_pickup;
      case Dumper:
        return R.drawable.travel_report_dumper;
      case Garbage:
        return R.drawable.travel_report_garbage;
      case Mixer:
        return R.drawable.travel_report_mixer;
      case Asset:
        return R.drawable.travel_report_asset;

      default:
        return R.drawable.travel_report_truck;

    }
  }
}