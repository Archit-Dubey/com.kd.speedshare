package com.genonbeta.TrebleShot.app;

import android.content.SharedPreferences;
import com.genonbeta.TrebleShot.database.AccessDatabase;
import com.genonbeta.TrebleShot.util.AppUtils;
import com.genonbeta.TrebleShot.util.NotificationUtils;

public abstract class Service extends android.app.Service {
    private NotificationUtils mNotificationUtils;

    public AccessDatabase getDatabase() {
        return AppUtils.getDatabase(this);
    }

    public SharedPreferences getDefaultPreferences() {
        return AppUtils.getDefaultPreferences(getApplicationContext());
    }

    public NotificationUtils getNotificationUtils() {
        if (this.mNotificationUtils == null) {
            this.mNotificationUtils = new NotificationUtils(getApplicationContext(), getDatabase(), getDefaultPreferences());
        }
        return this.mNotificationUtils;
    }
}
