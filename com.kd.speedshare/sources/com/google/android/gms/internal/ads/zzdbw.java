package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzdbw implements zzddz<Bundle> {
    private final Bundle zzdqi;

    public zzdbw(Bundle bundle) {
        this.zzdqi = bundle;
    }

    public final /* synthetic */ void zzs(Object obj) {
        Bundle bundle = (Bundle) obj;
        Bundle zza = zzdlf.zza(bundle, "device");
        zza.putBundle("android_mem_info", this.zzdqi);
        bundle.putBundle("device", zza);
    }
}
