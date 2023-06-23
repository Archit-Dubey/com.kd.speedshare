package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.res.Configuration;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.zzq;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public class zzays extends zzayp {
    public final boolean zza(Activity activity, Configuration configuration) {
        if (!((Boolean) zzwg.zzpw().zzd(zzaav.zzcta)).booleanValue()) {
            return false;
        }
        if (((Boolean) zzwg.zzpw().zzd(zzaav.zzctc)).booleanValue()) {
            return activity.isInMultiWindowMode();
        }
        zzwg.zzps();
        int zzc = zzbaq.zzc(activity, configuration.screenHeightDp);
        int zzc2 = zzbaq.zzc(activity, configuration.screenWidthDp);
        zzq.zzkw();
        DisplayMetrics zza = zzaye.zza((WindowManager) activity.getApplicationContext().getSystemService("window"));
        int i = zza.heightPixels;
        int i2 = zza.widthPixels;
        int identifier = activity.getResources().getIdentifier("status_bar_height", "dimen", "android");
        int dimensionPixelSize = identifier > 0 ? activity.getResources().getDimensionPixelSize(identifier) : 0;
        double d = (double) activity.getResources().getDisplayMetrics().density;
        Double.isNaN(d);
        int round = ((int) Math.round(d + 0.5d)) * ((Integer) zzwg.zzpw().zzd(zzaav.zzcsz)).intValue();
        if (!(zze(i, zzc + dimensionPixelSize, round) && zze(i2, zzc2, round))) {
            return true;
        }
        return false;
    }

    private static boolean zze(int i, int i2, int i3) {
        return Math.abs(i - i2) <= i3;
    }
}
