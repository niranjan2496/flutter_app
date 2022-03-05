package com.flutter_app;

public class LocationDataModel {
    String latitude;
    String longitude;
    int battery;
    int gsmSignals;
    boolean batteryCharging;
    String operator;
    String deviceModel;

    public String getOperator() {
        return operator;
    }

    public void setOperator(String operator) {
        this.operator = operator;
    }


    public String getDeviceModel() {
        return deviceModel;
    }

    public void setDeviceModel(String deviceModel) {
        this.deviceModel = deviceModel;
    }

    public String getLatitude() {
        return latitude;
    }

    public void setLatitude(String latitude) {
        this.latitude = latitude;
    }

    public String getLongitude() {
        return longitude;
    }

    public void setLongitude(String longitude) {
        this.longitude = longitude;
    }

    public int getBattery() {
        return battery;
    }

    public void setBattery(int battery) {
        this.battery = battery;
    }

    public int getGsmSignals() {
        return gsmSignals;
    }

    public void setGsmSignals(int gsmSignals) {
        this.gsmSignals = gsmSignals;
    }

    public boolean isBatteryCharging() {
        return batteryCharging;
    }

    public void setBatteryCharging(boolean batteryCharging) {
        this.batteryCharging = batteryCharging;
    }

    @Override
    public String toString() {
        return "LocationDataModel{" +
                "latitude='" + latitude + '\'' +
                ", longitude='" + longitude + '\'' +
                ", battery=" + battery +
                ", gsmSignals=" + gsmSignals +
                ", batteryCharging=" + batteryCharging +
                ", operator='" + operator + '\'' +
                ", deviceModel='" + deviceModel + '\'' +
                '}';
    }
}
