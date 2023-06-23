package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzdap implements zzddz<Bundle> {
    private final double zzdtp;
    private final boolean zzdtq;

    public zzdap(double d, boolean z) {
        this.zzdtp = d;
        this.zzdtq = z;
    }

    public final /* synthetic */ void zzs(Object obj) {
        Bundle bundle = (Bundle) obj;
        Bundle zza = zzdlf.zza(bundle, "device");
        bundle.putBundle("device", zza);
        Bundle zza2 = zzdlf.zza(zza, "battery");
        zza.putBundle("battery", zza2);
        zza2.putBoolean("is_charging", this.zzdtq);
        zza2.putDouble("battery_level", this.zzdtp);
    }
}
