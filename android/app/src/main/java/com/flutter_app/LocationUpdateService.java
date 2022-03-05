/*
package com.flutter_app;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.location.Location;
import android.os.AsyncTask;
import android.os.BatteryManager;
import android.os.Build;
import android.os.IBinder;
import android.os.PowerManager;
import android.provider.Settings;
import android.telephony.PhoneStateListener;
import android.telephony.SignalStrength;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.widget.Toast;

import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.util.List;

public class LocationUpdateService extends Service {
    BatteryManager batteryManager;
    String deviceModel;
    String deviceId;
    LocationDataModel dataModel;
    TelephonyManager telephonyManager;
    int signal;

    public void onCreate() {
        super.onCreate();
        dataModel=new LocationDataModel();
        telephonyManager= (TelephonyManager) getSystemService(Context.TELEPHONY_SERVICE);
        PowerManager pm = (PowerManager) getSystemService(Context.POWER_SERVICE);
        SubscriptionManager subscriptionManager = SubscriptionManager.from(getApplicationContext());
        List<SubscriptionInfo> subsInfoList = subscriptionManager.getActiveSubscriptionInfoList();
//        apiHandler=new ApiHandler();
//        apiHandler.setApiResponseListener(this);


      */
/*  AlarmManager alarmManager = (AlarmManager) getSystemService(Context.ALARM_SERVICE);
        Intent alarmIntent = new Intent(this, BooCompletedBroadcastReceiver.class);
        PendingIntent pendingIntent = PendingIntent.getBroadcast(this, 0, alarmIntent, 0);
        alarmManager.setRepeating(AlarmManager.RTC_WAKEUP,0,10000, pendingIntent);*//*


        if (subsInfoList.size()<0){
            Toast.makeText(this, "there is no operator", Toast.LENGTH_SHORT).show();
        }else {
            dataModel.setOperator((String) subsInfoList.get(0).getCarrierName());
        }


        PowerManager.WakeLock wl = pm.newWakeLock(PowerManager.SCREEN_DIM_WAKE_LOCK, "lock");
        wl.acquire();

        deviceId = Settings.Secure.getString(getContentResolver(), Settings.Secure.ANDROID_ID);
        deviceModel = Build.MODEL;
        dataModel.setDeviceModel(deviceModel);
        if (Build.VERSION.SDK_INT > 26) {
            this.createNotificationChanel();
        } else {
            this.startForeground(1, new Notification());
        }
        batteryManager = (BatteryManager) getSystemService(BATTERY_SERVICE);
        this.requestLocationUpdates();
    }

    @RequiresApi(26)
    private final void createNotificationChanel() {
        PendingIntent pendingIntent = PendingIntent.getActivity(this,
                0,
                new Intent(this, MainActivity.class),
                PendingIntent.FLAG_ONE_SHOT);

        String NOTIFICATION_CHANNEL_ID = "123823";
        String channelName = "Location Access";
        NotificationChannel chan = new NotificationChannel(NOTIFICATION_CHANNEL_ID, (CharSequence) channelName, NotificationManager.IMPORTANCE_HIGH);
        chan.setLightColor(Color.BLUE);
        chan.setLockscreenVisibility(1);
        Object notificationServer = this.getSystemService(Context.NOTIFICATION_SERVICE);
        NotificationManager manager = (NotificationManager) notificationServer;
        manager.createNotificationChannel(chan);
        NotificationCompat.Builder notificationBuilder = new NotificationCompat.Builder((Context) this, NOTIFICATION_CHANNEL_ID);
        notificationBuilder.setContentIntent(pendingIntent);
        notificationBuilder.setAutoCancel(false);
        Notification notification = notificationBuilder.setOngoing(true)
                                     .setContentTitle((CharSequence) ("App is running count::"))
                                      .setPriority(1).setCategory("service").build();
        this.startForeground(113, notification);
    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        String st = intent.getStringExtra("stop");
        if (st != null && st.equals("stop")) {
            stopForeground(true);
            stopSelf();
        }
        return START_STICKY;
    }

    @Nullable
    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }

    private final void requestLocationUpdates() {
        Log.e("comming ", "----------------------------");

        FusedLocationProviderClient client = LocationServices.getFusedLocationProviderClient((Context) this);
        int permission = ContextCompat.checkSelfPermission((Context) this, "android.src.permission.ACCESS_FINE_LOCATION");
        if (permission == 0) {
            client.requestLocationUpdates(LocationRequstSingleton.getInstance(), (LocationCallback) (new LocationCallback() {
                @RequiresApi(api = Build.VERSION_CODES.P)
                public void onLocationResult(@Nullable LocationResult locationResult) {
                    Location location = locationResult.getLastLocation();
                    if (location != null) {

                            int batLevel = batteryManager.getIntProperty(BatteryManager.BATTERY_PROPERTY_CAPACITY);
                            dataModel.setBatteryCharging(batteryManager.isCharging());
                            dataModel.setBattery(batLevel);
                           dataModel.setGsmSignals(signal);
                           dataModel.setGsmSignals(telephonyManager.getSignalStrength().getLevel());
                           dataModel.setLatitude(location.getLatitude()+"");
                           dataModel.setLongitude(location.getLongitude()+"");

                           Log.d("LocationData------",dataModel.toString());
                       //    apiHandler.sendLocationData(dataModel);

                    }

                }
            }), null);
        }

    }


    @Override
    public void onTaskRemoved(Intent rootIntent) {
        super.onTaskRemoved(rootIntent);
        Toast.makeText(this, "task removed", Toast.LENGTH_SHORT).show();
        Intent serviceIntent = new Intent(this,LocationUpdateService.class);
        startService(serviceIntent);
    }

    public void onDestroy() {
        Toast.makeText(this, "service destroyed", Toast.LENGTH_SHORT).show();
        super.onDestroy();
    }

    */
/*@Override
    public void onApiResponse(ApiResponseModel response, TrackOBitException e) {

    }*//*



    public class PhoneCustomStateListener extends PhoneStateListener {



        @Override
        public void onSignalStrengthsChanged(SignalStrength signalStrength) {
            super.onSignalStrengthsChanged(signalStrength);
            signal = signalStrength.getGsmSignalStrength();

        }
    }
    
     class ApiCalling extends AsyncTask<LocationDataModel, Void, Void> {

        @Override
        protected Void doInBackground(LocationDataModel... locationData) {

           */
/* Call<RequestBody> request=apiService.sendLocationData(dataModel);
            try {
                Log.d("ReponseData-------",request.execute().body()+"");
            } catch (IOException e) {
                e.printStackTrace();
            }*//*

           */
/* Log.d("Message-----------", message + "----" + new Date());
            String response = "";
            try {
                Socket socket = new Socket("52.74.44.145", 7900);
                socket.setSoTimeout(3 * 60 * 1000);
                BufferedReader br = new BufferedReader(new InputStreamReader(socket.getInputStream(), "US-ASCII"));
                PrintWriter out = new PrintWriter(socket.getOutputStream(), true);
                out.println(message);
                out.flush();
                socket.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            Log.d("TCP   Response   :   ", "-" + response);*//*



            return null;
        }
    }

}
*/
