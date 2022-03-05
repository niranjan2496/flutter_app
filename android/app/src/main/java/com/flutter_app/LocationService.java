package com.flutter_app;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.IBinder;

import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;

import java.util.Random;

public class LocationService extends Service {

    @Override
    public void onCreate() {
        super.onCreate();
        PendingIntent pendingIntent = PendingIntent.getActivity(this,
                0,
                new Intent(this, MainActivity.class),
                PendingIntent.FLAG_ONE_SHOT);

        String NOTIFICATION_CHANNEL_ID = "123823";
        String channelName = "Location Access";
        NotificationChannel chan = null;
        if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.O) {
            chan = new NotificationChannel(NOTIFICATION_CHANNEL_ID, (CharSequence) channelName, NotificationManager.IMPORTANCE_HIGH);
            chan.setLightColor(Color.BLUE);
            chan.setLockscreenVisibility(1);
            Object notificationServer = this.getSystemService(Context.NOTIFICATION_SERVICE);
            NotificationManager manager = (NotificationManager) notificationServer;
            manager.createNotificationChannel(chan);
            NotificationCompat.Builder notificationBuilder = new NotificationCompat.Builder((Context) this, NOTIFICATION_CHANNEL_ID);
            notificationBuilder.setContentIntent(pendingIntent);
            notificationBuilder.setAutoCancel(false);
            Notification notification = notificationBuilder.setOngoing(true).setContentTitle((CharSequence) ("App is running count::")).setPriority(1).setCategory("service").build();
            this.startForeground(113, notification);

        }

    }

    @Nullable
    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }
}
