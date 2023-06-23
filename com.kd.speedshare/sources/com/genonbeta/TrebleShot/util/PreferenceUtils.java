package com.genonbeta.TrebleShot.util;

import android.content.Context;
import android.content.SharedPreferences;
import com.genonbeta.android.framework.preference.SuperPreferences;

public class PreferenceUtils extends com.genonbeta.android.framework.util.PreferenceUtils {
    public static void syncDefaults(Context context) {
        syncDefaults(context, true, false);
    }

    public static void syncDefaults(Context context, boolean z, boolean z2) {
        SuperPreferences defaultLocalPreferences = AppUtils.getDefaultLocalPreferences(context);
        SuperPreferences defaultPreferences = AppUtils.getDefaultPreferences(context);
        if (z) {
            sync(defaultLocalPreferences, defaultPreferences);
        } else if (z2) {
            syncPreferences((SharedPreferences) defaultLocalPreferences, (SharedPreferences) defaultPreferences);
        } else {
            syncPreferences((SharedPreferences) defaultPreferences, (SharedPreferences) defaultLocalPreferences);
        }
    }
}
