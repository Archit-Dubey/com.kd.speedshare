package com.genonbeta.TrebleShot.util;

import android.content.Context;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;

public class DynamicNotification extends NotificationCompat.Builder {
    private NotificationManagerCompat mManager;
    private int mNotificationId;

    public DynamicNotification(Context context, NotificationManagerCompat notificationManagerCompat, String str, int i) {
        super(context, str);
        this.mManager = notificationManagerCompat;
        this.mNotificationId = i;
    }

    public DynamicNotification cancel() {
        this.mManager.cancel(this.mNotificationId);
        return this;
    }

    public int getNotificationId() {
        return this.mNotificationId;
    }

    public DynamicNotification setNotificationId(int i) {
        this.mNotificationId = i;
        return this;
    }

    public DynamicNotification show() {
        this.mManager.notify(this.mNotificationId, build());
        return this;
    }

    public DynamicNotification updateProgress(int i, int i2, boolean z) {
        setProgress(i, i2, z);
        this.mManager.notify(this.mNotificationId, build());
        return this;
    }
}
