package com.genonbeta.TrebleShot.util;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import androidx.core.app.NotificationManagerCompat;
import com.genonbeta.TrebleShot.database.AccessDatabase;
import com.kd.speedshare.R;

public class NotificationUtils {
    public static final String EXTRA_NOTIFICATION_ID = "notificationId";
    public static final String NOTIFICATION_CHANNEL_HIGH = "tsHighPriority";
    public static final String NOTIFICATION_CHANNEL_LOW = "tsLowPriority";
    public static final String TAG = "NotificationUtils";
    private Context mContext;
    private AccessDatabase mDatabase;
    private NotificationManagerCompat mManager;
    private SharedPreferences mPreferences;

    public NotificationUtils(Context context, AccessDatabase accessDatabase, SharedPreferences sharedPreferences) {
        this.mContext = context;
        this.mManager = NotificationManagerCompat.from(context);
        this.mDatabase = accessDatabase;
        this.mPreferences = sharedPreferences;
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            NotificationChannel notificationChannel = new NotificationChannel(NOTIFICATION_CHANNEL_HIGH, this.mContext.getString(R.string.text_notificationChannelHigh), 4);
            notificationChannel.enableLights(this.mPreferences.getBoolean("notification_light", false));
            notificationChannel.enableVibration(this.mPreferences.getBoolean("notification_vibrate", false));
            notificationManager.createNotificationChannel(notificationChannel);
            notificationManager.createNotificationChannel(new NotificationChannel(NOTIFICATION_CHANNEL_LOW, this.mContext.getString(R.string.text_notificationChannelLow), 2));
        }
    }

    public DynamicNotification buildDynamicNotification(long j, String str) {
        Context context = getContext();
        NotificationManagerCompat manager = getManager();
        if (j > 2147483647L) {
            j /= 100000;
        }
        return new DynamicNotification(context, manager, str, (int) j);
    }

    public NotificationUtils cancel(int i) {
        this.mManager.cancel(i);
        return this;
    }

    public Context getContext() {
        return this.mContext;
    }

    public AccessDatabase getDatabase() {
        return this.mDatabase;
    }

    public NotificationManagerCompat getManager() {
        return this.mManager;
    }

    public int getNotificationSettings() {
        boolean z = this.mPreferences.getBoolean("notification_sound", true);
        char c = 0;
        char c2 = this.mPreferences.getBoolean("notification_vibrate", true) ? (char) 2 : 0;
        if (this.mPreferences.getBoolean("notification_light", false)) {
            c = 4;
        }
        return (z | c2) | c ? 1 : 0;
    }

    public SharedPreferences getPreferences() {
        return this.mPreferences;
    }
}
