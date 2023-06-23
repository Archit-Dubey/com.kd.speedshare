package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.core.app.NotificationCompat;
import com.google.firebase.analytics.FirebaseAnalytics;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzdas implements zzdec<zzdap> {
    private final zzdvi zzgad;
    private final Context zzvr;

    public zzdas(zzdvi zzdvi, Context context) {
        this.zzgad = zzdvi;
        this.zzvr = context;
    }

    public final zzdvf<zzdap> zzaqm() {
        return this.zzgad.zze(new zzdar(this));
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzdap zzaqr() throws Exception {
        double d;
        Intent registerReceiver = this.zzvr.registerReceiver((BroadcastReceiver) null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        boolean z = false;
        if (registerReceiver != null) {
            int intExtra = registerReceiver.getIntExtra(NotificationCompat.CATEGORY_STATUS, -1);
            double intExtra2 = (double) registerReceiver.getIntExtra(FirebaseAnalytics.Param.LEVEL, -1);
            double intExtra3 = (double) registerReceiver.getIntExtra("scale", -1);
            Double.isNaN(intExtra2);
            Double.isNaN(intExtra3);
            d = intExtra2 / intExtra3;
            if (intExtra == 2 || intExtra == 5) {
                z = true;
            }
        } else {
            d = -1.0d;
        }
        return new zzdap(d, z);
    }
}
