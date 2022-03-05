package com.flutter_app;

import com.google.android.gms.location.LocationRequest;

class LocationRequstSingleton {
    public static LocationRequest locationRequest;
    public static LocationRequest getInstance() {
        if (locationRequest == null) {
            locationRequest = LocationRequest.create();
            locationRequest.setInterval(30*1000);
            locationRequest.setMaxWaitTime(30000);
           // locationRequest.setFastestInterval(30*1000);
            locationRequest.setPriority(LocationRequest.PRIORITY_BALANCED_POWER_ACCURACY);
            return locationRequest;
        } else {
          return locationRequest;
        }
    }
}